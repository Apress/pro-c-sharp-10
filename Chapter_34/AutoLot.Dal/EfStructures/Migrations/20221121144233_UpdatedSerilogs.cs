using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AutoLot.Dal.EfStructures.Migrations
{
    public partial class UpdatedSerilogs : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "ActionName",
                schema: "Logging",
                table: "SeriLogs",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "FilePath",
                schema: "Logging",
                table: "SeriLogs",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "ActionName",
                schema: "Logging",
                table: "SeriLogs",
                type: "nvarchar",
                maxLength: 50);

            migrationBuilder.AlterColumn<string>(
                name: "FilePath",
                schema: "Logging",
                table: "SeriLogs",
                type: "nvarchar",
                maxLength: 50);
        }
    }
}
