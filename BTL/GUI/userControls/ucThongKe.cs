using BTL.DAO;
using BTL.Model;
using Microsoft.Reporting.WinForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;

namespace BTL
{
    public partial class ucThongKe : UserControl
    {
        private List<Ban> ds_ban = new List<Ban>();
        private List<MonAn> ds_mon = new List<MonAn>();
        private List<NhomMon> ds_nhom = new List<NhomMon>();
        private DAO_NhomMon dao_nh = new DAO_NhomMon();
        private DAO_MonAn dao_m = new DAO_MonAn();
        private DAO_HoaDon dao_hd = new DAO_HoaDon();
        private DAO_Ban dao_b = new DAO_Ban();
        public ucThongKe()
        {
            InitializeComponent();
            Dock = DockStyle.Fill;
        }

        public void thongKeChung()
        {
            decimal total = dao_hd.getTotalPriceAll();
            totalOrder.Text = "Tổng số hoá đơn: " + dao_hd.getAll().Count;
            totalPrice.Text = "Tổng tiền bán được: " + (total == 0 ? "" + 0 : total.ToString("#,##")) + "đ";
        }

        private void ucThongKe_Load(object sender, EventArgs e)
        {
            //Lấy danh sách bàn
            ds_ban = dao_b.getAll();
            //Lấy danh sách nhóm
            ds_nhom = dao_nh.getAll();
            //Lấy danh sách món ăn
            ds_mon = dao_m.getAll();
            //Thống kê chung
            totalTable.Text = "Tổng số bàn: " + ds_ban.Count;
            totalFood.Text = "Tổng số thực đơn: " + ds_mon.Count;
            totalGroup.Text = "Tổng số nhóm thực đơn: " + ds_nhom.Count;
            thongKeChung();
            cbFilter.SelectedIndex = 0;
        }

        private void btnViewRevenue_Click(object sender, EventArgs e)
        {
            new Report(cbFilter.SelectedIndex, dateTimeFilter.Value).Visible = true;
        }

        private void btnViewOrder_Click(object sender, EventArgs e)
        {
            DateTime start = new DateTime(dateTimeStart1.Value.Year, dateTimeStart1.Value.Month, dateTimeStart1.Value.Day, 0, 0, 0);
            DateTime end = new DateTime(dateTimeEnd1.Value.Year, dateTimeEnd1.Value.Month, dateTimeEnd1.Value.Day, 23, 59, 59);
            new Report(false, start, end).Visible = true;
        }

        private void btnViewFood_Click(object sender, EventArgs e)
        {
            DateTime start = new DateTime(dateTimeStart2.Value.Year, dateTimeStart2.Value.Month, dateTimeStart2.Value.Day, 0, 0, 0);
            DateTime end = new DateTime(dateTimeEnd2.Value.Year, dateTimeEnd2.Value.Month, dateTimeEnd2.Value.Day, 23, 59, 59);
            new Report(true, start, end).Visible = true;
        }
    }
}
