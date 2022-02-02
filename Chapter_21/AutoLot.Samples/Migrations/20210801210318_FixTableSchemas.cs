using Microsoft.EntityFrameworkCore.Migrations;

namespace AutoLot.Samples.Migrations
{
    public partial class FixTableSchemas : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameTable(
                name: "Radios",
                newName: "Radios",
                newSchema: "dbo");

            migrationBuilder.RenameTable(
                name: "Makes",
                newName: "Makes",
                newSchema: "dbo");

            migrationBuilder.RenameTable(
                name: "Drivers",
                newName: "Drivers",
                newSchema: "dbo");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameTable(
                name: "Radios",
                schema: "dbo",
                newName: "Radios");

            migrationBuilder.RenameTable(
                name: "Makes",
                schema: "dbo",
                newName: "Makes");

            migrationBuilder.RenameTable(
                name: "Drivers",
                schema: "dbo",
                newName: "Drivers");
        }
    }
}
