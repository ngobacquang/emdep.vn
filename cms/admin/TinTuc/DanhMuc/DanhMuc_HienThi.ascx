﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DanhMuc_HienThi.ascx.cs" Inherits="cms_admin_TinTuc_DanhMuc_DanhMuc_HienThi" %>


<div class="head">
	Các danh mục tin tức đã tạo
	<div class="action fr">
		<a class="btThemMoi" href="/Admin.aspx?modul=TinTuc&modulphu=DanhMuc&thaotac=ThemMoi" title="Thêm mới danh mục"><i class="fa fa-plus-circle" aria-hidden="true"></i></a>
	</div>
	<div class="cb">
	</div>
</div>
<div class="wapp">
	<table class="tb tbDanhMuc">
		<tr>
			<th class="cotMa">Mã</th>
			<th class="cotTen">Tên danh mục</th>
			<th class="cotAnh">Ảnh đại diện</th>
			<th class="cotThuTu">Thứ tự</th>
			<th class="cotCongCu">Công cụ</th>
		</tr>
		<asp:Literal ID="ltrDanhMuc" runat="server"></asp:Literal>
	</table>
</div>
<script>
	function XoaDanhMuc(MaDM) {
		if (confirm("Bạn có chắc chắn muốn xóa danh mục có mã là: " + MaDM + "?")) {
			// viết code xóa danh mục tại đây
			$.post("cms/admin/TinTuc/DanhMuc/Ajax/DanhMuc.aspx",
			{
				"ThaoTac": "XoaDanhMuc",
				"MaDM": MaDM
			},
			function(data, status){
				if(data == 1){ 
					$("#maDong_" + MaDM).slideUp();
				}
			});
		}
	}
</script>