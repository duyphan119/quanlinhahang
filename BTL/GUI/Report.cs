using BTL.DAO;
using BTL.Model;
using Guna.UI2.WinForms;
using Microsoft.Reporting.WinForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace BTL
{
    public partial class Report : Form
    {
        private SqlConnection cnn;
        private DAO_HoaDon dao_hd = new DAO_HoaDon();
        private DAO_ChiTietHoaDon dao_cthd = new DAO_ChiTietHoaDon();
        private DAO_DoanhThu dao_dt = new DAO_DoanhThu();
        private DataTable table = new DataTable();
        private DateTime day;
        public Report(HoaDon x)
        {
            InitializeComponent();
            if (x != null)
            {
                xuatHoaDon(x);
            }
        }

        public void xuatHoaDon(HoaDon hd)
        {
            Text = "Hoá đơn";
            table.Rows.Clear();
            table.Columns.Clear();
            table.Columns.Add("sohd", typeof(string));
            table.Columns.Add("mamon", typeof(string));
            table.Columns.Add("tenmon", typeof(string));
            table.Columns.Add("dvt", typeof(string));
            table.Columns.Add("soluong", typeof(int));
            table.Columns.Add("giatien", typeof(decimal));
            table.Columns.Add("thanhtien", typeof(decimal));
            hd.ds_mon.ForEach(item =>
            {
                table.Rows.Add(hd.sohd, item.mon.mamon, item.mon.ten, item.mon.dvt, item.soluong, item.mon.gia, item.soluong * item.mon.gia);
            });
            reportViewer2.LocalReport.ReportPath = "../../GUI/reports/HoaDon.rdlc";
            ReportParameter rptId = new ReportParameter("id", "" + hd.sohd);
            ReportParameter rptDate = new ReportParameter("date", "" + hd.giora.ToString("dd-MM-yyyy"));
            ReportParameter rptTime = new ReportParameter("time", "" + hd.giora.ToString("HH:mm:ss"));
            ReportParameter rptTable = new ReportParameter("table", "" + hd.ban.soban);
            ReportParameter rptEmployee = new ReportParameter("name_employee", "" + hd.nv.ten);
            reportViewer2.LocalReport.SetParameters(new ReportParameter[]
                { rptId, rptDate , rptTime, rptTable, rptEmployee }
            );
            ReportDataSource rds = new ReportDataSource();
            rds.Name = "DataSet1";
            rds.Value = table;
            reportViewer2.LocalReport.DataSources.Clear();
            reportViewer2.LocalReport.DataSources.Add(rds);
            reportViewer2.RefreshReport();
            dao_hd.discharge(hd.sohd, hd.giora);
        }

        public Report(int index, DateTime date)
        {
            InitializeComponent();
            day = date;
            bieuDoThongKe(index);
        }

        public Report(bool type, DateTime s, DateTime e)
        {
            InitializeComponent();
            if(type == false)
            {
                Text = "Thống kê hoá đơn";
                thongKeHoaDon(s,e);
            }else if(type == true)
            {
                Text = "Thống kê thực đơn";
                thongKeMonAn(s, e);
            }
        }
        public void thongKeMonAn(DateTime start, DateTime end)
        {
            List<ChiTietHoaDon> result = dao_cthd.getInStartEnd(start, end);
            table.Rows.Clear();
            table.Columns.Clear();
            table.Columns.Add("mamon", typeof(string));
            table.Columns.Add("tenmon", typeof(string));
            table.Columns.Add("dvt", typeof(string));
            table.Columns.Add("soluong", typeof(int));
            table.Columns.Add("giaban", typeof(decimal));
            table.Columns.Add("tennhom", typeof(string));
            result.ForEach(item =>
            {
                table.Rows.Add(item.mon.mamon, item.mon.ten, item.mon.dvt, item.soluong, item.mon.gia, item.mon.nhom.ten);
            });
            reportViewer2.LocalReport.ReportPath = "../../GUI/reports/ThongKeMonAn.rdlc";
            string title = "";
            if(start == end)
            {
                title = $"Danh sách thực đơn trong ngày {start.ToString("dd/MM/yyyy")}";
            }
            else
            {
                title = $"Danh sách thực đơn từ ngày {start.ToString("dd/MM/yyyy")} đến ngày {end.ToString("dd/MM/yyyy")}";
            }
            ReportParameter rptTitle = new ReportParameter("title", title);
            reportViewer2.LocalReport.SetParameters(new ReportParameter[] { rptTitle });
            ReportDataSource rds = new ReportDataSource();
            rds.Name = "DataSet1";
            rds.Value = table;
            reportViewer2.LocalReport.DataSources.Clear();
            reportViewer2.LocalReport.DataSources.Add(rds);
            reportViewer2.RefreshReport();
        }
        public void thongKeHoaDon(DateTime start, DateTime end)
        {
            List<HoaDon> result = dao_hd.getInStartEnd(start, end);
            table.Rows.Clear();
            table.Columns.Clear();
            table.Columns.Add("sohd", typeof(string));
            table.Columns.Add("giovao", typeof(string));
            table.Columns.Add("giora", typeof(string));
            table.Columns.Add("soban", typeof(int));
            table.Columns.Add("tongtien", typeof(decimal));
            table.Columns.Add("tennv", typeof(string));
            result.ForEach(item =>
            {
                table.Rows.Add(item.sohd, item.giovao.ToString("dd/MM/yyyy HH:mm:ss"), item.giora.ToString("dd/MM/yyyy HH:mm:ss"), item.ban.soban, dao_hd.getTotalPrice(item.sohd), item.nv.ten);
            });
            reportViewer2.LocalReport.ReportPath = "../../GUI/reports/ThongKeHoaDon.rdlc";
            string title = "";
            if (start == end)
            {
                title = $"Danh sách hoá đơn trong ngày {start.ToString("dd/MM/yyyy")}";
            }
            else
            {
                title = $"Danh sách hoá đơn từ ngày {start.ToString("dd/MM/yyyy")} đến ngày {end.ToString("dd/MM/yyyy")}";
            }
            ReportParameter rptTitle = new ReportParameter("title", title);
            reportViewer2.LocalReport.SetParameters(new ReportParameter[] { rptTitle });
            ReportDataSource rds = new ReportDataSource();
            rds.Name = "DataSet1";
            rds.Value = table;
            reportViewer2.LocalReport.DataSources.Clear();
            reportViewer2.LocalReport.DataSources.Add(rds);
            reportViewer2.RefreshReport();
        }

        public void thongKeCacNgayTrongTuan()
        {
            List<DoanhThu> result = dao_dt.doanhThuCacNgayTrongTuan(day);
            table.Rows.Clear();
            DoanhThu chunhat = result[0];
            result.RemoveAt(0);
            result.Add(chunhat);
            result.ForEach(item =>
            {
                if (item.time == 1)
                {
                    table.Rows.Add("Chủ nhật", item.value);
                }
                else
                {
                    table.Rows.Add("Thứ " + item.time, item.value);
                }
            });
            reportViewer2.LocalReport.ReportPath = "../../GUI/reports/BieuDo.rdlc";
            ReportParameter rptTitle = new ReportParameter("title", "Doanh Thu Các Ngày Trong Tuần");
            reportViewer2.LocalReport.SetParameters(new ReportParameter[] { rptTitle });
            ReportDataSource rds = new ReportDataSource();
            rds.Name = "DataSet1";
            rds.Value = table;
            reportViewer2.LocalReport.DataSources.Clear();
            reportViewer2.LocalReport.DataSources.Add(rds);
            reportViewer2.RefreshReport();
        }

        public void thongKeCacThangTrongNam()
        {
            List<DoanhThu> result = dao_dt.doanhThuCacThangTrongNam(day);
            table.Rows.Clear();

            result.ForEach(item =>
            {
                table.Rows.Add(item.time, item.value);
            });
            reportViewer2.LocalReport.ReportPath = "../../GUI/reports/BieuDo.rdlc";
            ReportParameter rptTitle = new ReportParameter("title", $"Doanh Thu Các Tháng Trong Năm {day.Year}");
            reportViewer2.LocalReport.SetParameters(new ReportParameter[] { rptTitle });
            ReportDataSource rds = new ReportDataSource();
            rds.Name = "DataSet1";
            rds.Value = table;
            reportViewer2.LocalReport.DataSources.Clear();
            reportViewer2.LocalReport.DataSources.Add(rds);
            reportViewer2.RefreshReport();
        }

        public void thongKeCacQuyTrongNam()
        {
            List<DoanhThu> result = dao_dt.doanhThuCacQuyTrongNam(day);
            table.Rows.Clear();
            result.ForEach(item =>
            {
                table.Rows.Add("Quý " + item.time, item.value);
            });
            reportViewer2.LocalReport.ReportPath = "../../GUI/reports/BieuDo.rdlc";
            ReportParameter rptTitle = new ReportParameter("title", $"Doanh Thu Các Quý Trong Năm {day.Year}");
            reportViewer2.LocalReport.SetParameters(new ReportParameter[] { rptTitle });
            ReportDataSource rds = new ReportDataSource();
            rds.Name = "DataSet1";
            rds.Value = table;
            reportViewer2.LocalReport.DataSources.Clear();
            reportViewer2.LocalReport.DataSources.Add(rds);
            reportViewer2.RefreshReport();
        }

        public void thongKeCacNgayTrongThang()
        {
            List<DoanhThu> result = dao_dt.doanhThuCacNgayTrongThang(day);
            table.Rows.Clear();
            result.ForEach(item =>
            {
                table.Rows.Add(item.time, item.value);
            });
            reportViewer2.LocalReport.ReportPath = "../../GUI/reports/BieuDo.rdlc";
            ReportParameter rptTitle = new ReportParameter("title", $"Doanh Thu Các Ngày Trong Tháng {day.Month}");
            reportViewer2.LocalReport.SetParameters(new ReportParameter[] { rptTitle });
            ReportDataSource rds = new ReportDataSource();
            rds.Name = "DataSet1";
            rds.Value = table;
            reportViewer2.LocalReport.DataSources.Clear();
            reportViewer2.LocalReport.DataSources.Add(rds);
            reportViewer2.RefreshReport();
        }

        public void thongKeCacNamGanDay(int num)
        {
            List<DoanhThu> result = dao_dt.doanhThuCacNamGanDay(num);
            table.Rows.Clear();
            result.ForEach(item =>
            {
                table.Rows.Add("Năm " + item.time, item.value);
            });
            reportViewer2.LocalReport.ReportPath = "../../GUI/reports/BieuDo.rdlc";
            ReportParameter rptTitle = new ReportParameter("title",$"Doanh Thu {num} Năm Gần Đây");
            reportViewer2.LocalReport.SetParameters(new ReportParameter[] { rptTitle });
            ReportDataSource rds = new ReportDataSource();
            rds.Name = "DataSet1";
            rds.Value = table;
            reportViewer2.LocalReport.DataSources.Clear();
            reportViewer2.LocalReport.DataSources.Add(rds);
            reportViewer2.RefreshReport();
        }
        public void bieuDoThongKe(int index)
        {
            table.Columns.Clear();
            table.Columns.Add("key", typeof(string));
            table.Columns.Add("value", typeof(decimal));
            if (index == 0)
            {
                Text = "Thống kê các ngày trong tuần";
                thongKeCacNgayTrongTuan();
            }
            else if (index == 1)
            {
                Text = "Thống kê các ngày trong tháng";
                thongKeCacNgayTrongThang();
            }
            else if (index == 2)
            {
                Text = "Thống kê các tháng trong năm";
                thongKeCacThangTrongNam();
            }
            else if (index == 3)
            {
                Text = "Thống kê các quý trong năm";
                thongKeCacQuyTrongNam();
            }
            else if (index == 4)
            {
                Text = "Thống kê ba năm gần đây";
                thongKeCacNamGanDay(3);
            }
        }
        public static string NumberToText(decimal inputNumber, bool suffix = true)
        {
            string[] unitNumbers = new string[] { "không", "một", "hai", "ba", "bốn", "năm", "sáu", "bảy", "tám", "chín" };
            string[] placeValues = new string[] { "", "nghìn", "triệu", "tỷ" };
            bool isNegative = false;

            // -12345678.3445435 => "-12345678"
            string sNumber = inputNumber.ToString("#");
            double number = Convert.ToDouble(sNumber);
            if (number < 0)
            {
                number = -number;
                sNumber = number.ToString();
                isNegative = true;
            }


            int ones, tens, hundreds;

            int positionDigit = sNumber.Length;   // last -> first

            string result = " ";


            if (positionDigit == 0)
                result = unitNumbers[0] + result;
            else
            {
                // 0:       ###
                // 1: nghìn ###,###
                // 2: triệu ###,###,###
                // 3: tỷ    ###,###,###,###
                int placeValue = 0;

                while (positionDigit > 0)
                {
                    // Check last 3 digits remain ### (hundreds tens ones)
                    tens = hundreds = -1;
                    ones = Convert.ToInt32(sNumber.Substring(positionDigit - 1, 1));
                    positionDigit--;
                    if (positionDigit > 0)
                    {
                        tens = Convert.ToInt32(sNumber.Substring(positionDigit - 1, 1));
                        positionDigit--;
                        if (positionDigit > 0)
                        {
                            hundreds = Convert.ToInt32(sNumber.Substring(positionDigit - 1, 1));
                            positionDigit--;
                        }
                    }

                    if ((ones > 0) || (tens > 0) || (hundreds > 0) || (placeValue == 3))
                        result = placeValues[placeValue] + result;

                    placeValue++;
                    if (placeValue > 3) placeValue = 1;

                    if ((ones == 1) && (tens > 1))
                        result = "một " + result;
                    else
                    {
                        if ((ones == 5) && (tens > 0))
                            result = "lăm " + result;
                        else if (ones > 0)
                            result = unitNumbers[ones] + " " + result;
                    }
                    if (tens < 0)
                        break;
                    else
                    {
                        if ((tens == 0) && (ones > 0)) result = "lẻ " + result;
                        if (tens == 1) result = "mười " + result;
                        if (tens > 1) result = unitNumbers[tens] + " mươi " + result;
                    }
                    if (hundreds < 0) break;
                    else
                    {
                        if ((hundreds > 0) || (tens > 0) || (ones > 0))
                            result = unitNumbers[hundreds] + " trăm " + result;
                    }
                    result = " " + result;
                }
            }
            result = result.Trim();
            if (isNegative) result = "Âm " + result;
            return result + (suffix ? " đồng" : "");
        }

        public void phieuNhap(Phieu phieu)
        {
            Text = "Phiếu nhập";
            string connetionString = @"Data Source=DESKTOP-NIULDEP\SQLEXPRESS;Initial Catalog=btl_pttkht;User ID=sa;Password=password";
            cnn = new SqlConnection(connetionString);
            DataSet ds = new DataSet();
            cnn.Open();
            SqlDataAdapter adp = new SqlDataAdapter($@"
                select ct.sopn, nl.manl, nl.tennl, nl.dvt, ct.soluong, nl.giatien
	            from chitietphieunhap ct, nguyenlieu nl
	            where ct.sopn = '{phieu.sophieu}' and nl.manl = ct.manl", cnn);
            adp.Fill(ds);
            cnn.Close();
            reportViewer2.LocalReport.ReportPath = "../../GUI/reports/PhieuNhapKho.rdlc";
            ReportParameter rptId = new ReportParameter("id", "" + phieu.sophieu);
            ReportParameter rptDate = new ReportParameter("date", "" + phieu.ngay.Day);
            ReportParameter rptMonth = new ReportParameter("month", "" + phieu.ngay.Month);
            ReportParameter rptYear = new ReportParameter("year", "" + phieu.ngay.Year);
            ReportParameter rptTime = new ReportParameter("name_supplier", phieu.list[0].nl.ncc.ten);
            ReportParameter rptTable = new ReportParameter("address", "TP Thủ Đức, Thành phố Hồ Chí Minh");
            ReportParameter rptEmployee = new ReportParameter("price_toString", NumberToText(phieu.getTotalPrice()));
            reportViewer2.LocalReport.SetParameters(new ReportParameter[]
                { rptId, rptDate , rptMonth, rptYear, rptTime, rptTable, rptEmployee }
            );
            ReportDataSource rds = new ReportDataSource();
            rds.Name = "NhapKho_DataSet";
            rds.Value = ds.Tables[0];
            reportViewer2.LocalReport.DataSources.Clear();
            reportViewer2.LocalReport.DataSources.Add(rds);
            reportViewer2.RefreshReport();
            Visible = true;
        }

        public void phieuXuat(Phieu phieu)
        {
            Text = "Phiếu xuất";
            string connetionString = @"Data Source=DESKTOP-NIULDEP\SQLEXPRESS;Initial Catalog=btl_pttkht;User ID=sa;Password=password";
            cnn = new SqlConnection(connetionString);
            DataSet ds = new DataSet();
            cnn.Open();
            SqlDataAdapter adp = new SqlDataAdapter($@"
                select ct.sopx, nl.manl, nl.tennl, nl.dvt, ct.soluong, nl.giatien
	            from chitietphieuxuat ct, nguyenlieu nl
	            where ct.sopx = '{phieu.sophieu}' and nl.manl = ct.manl", cnn);
            adp.Fill(ds);
            cnn.Close();
            reportViewer2.LocalReport.ReportPath = "../../GUI/reports/PhieuXuatKho.rdlc";
            ReportParameter rptId = new ReportParameter("id", "" + phieu.sophieu);
            ReportParameter rptDate = new ReportParameter("date", "" + phieu.ngay.Day);
            ReportParameter rptMonth = new ReportParameter("month", "" + phieu.ngay.Month);
            ReportParameter rptYear = new ReportParameter("year", "" + phieu.ngay.Year);
            ReportParameter rptTable = new ReportParameter("address", "TP Thủ Đức, Thành phố Hồ Chí Minh");
            ReportParameter rptEmployee = new ReportParameter("price_toString", NumberToText(phieu.getTotalPrice()));
            reportViewer2.LocalReport.SetParameters(new ReportParameter[]
                { rptId, rptDate , rptMonth, rptYear, rptTable, rptEmployee }
            );
            ReportDataSource rds = new ReportDataSource();
            rds.Name = "XuatKho_DataSet";
            rds.Value = ds.Tables[0];
            reportViewer2.LocalReport.DataSources.Clear();
            reportViewer2.LocalReport.DataSources.Add(rds);
            reportViewer2.RefreshReport();
            Visible = true;
        }

        private void Report_Load(object sender, EventArgs e)
        {
            
        }

        private void Report_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult answer = MessageDialog.Show("Bạn có chắc chắn thoát ?", "Câu hỏi", MessageDialogButtons.YesNo, MessageDialogIcon.Question, MessageDialogStyle.Dark);
            e.Cancel = answer == DialogResult.No;
        }
    }
}
