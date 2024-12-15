using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace shop.Migrations
{
    /// <inheritdoc />
    public partial class change : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "password",
                table: "Tblusers",
                newName: "Password");

            migrationBuilder.RenameColumn(
                name: "id",
                table: "Tblusers",
                newName: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Password",
                table: "Tblusers",
                newName: "password");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "Tblusers",
                newName: "id");
        }
    }
}
