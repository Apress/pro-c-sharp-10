using Microsoft.EntityFrameworkCore.Migrations;

namespace AutoLot.Samples.Migrations
{
    public partial class Price : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<decimal>(
                name: "Price",
                schema: "dbo",
                table: "Inventory",
                type: "decimal(18,2)",
                maxLength: 50,
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Price",
                schema: "dbo",
                table: "Inventory");
        }
    }
}
