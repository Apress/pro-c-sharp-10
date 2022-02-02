using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace AutoLot.Samples.Migrations
{
    public partial class FluentUpdates : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Inventory_Makes_MakeId",
                schema: "dbo",
                table: "Inventory");

            migrationBuilder.RenameIndex(
                name: "IX_Radios_InventoryId",
                table: "Radios",
                newName: "IX_Radios_CarId");

            migrationBuilder.AlterColumn<string>(
                name: "Color",
                schema: "dbo",
                table: "Inventory",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: false,
                defaultValue: "Black",
                oldClrType: typeof(string),
                oldType: "nvarchar(50)",
                oldMaxLength: 50);

            migrationBuilder.AddColumn<DateTime>(
                name: "DateBuilt",
                schema: "dbo",
                table: "Inventory",
                type: "datetime2",
                nullable: true,
                defaultValueSql: "getdate()");

            migrationBuilder.AddColumn<bool>(
                name: "IsDrivable",
                schema: "dbo",
                table: "Inventory",
                type: "bit",
                nullable: false,
                defaultValue: true);

            migrationBuilder.AddColumn<string>(
                name: "Display",
                schema: "dbo",
                table: "Inventory",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: true,
                computedColumnSql: "[PetName] + ' (' + [Color] + ')'",
                stored: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Inventory_Makes_MakeId",
                schema: "dbo",
                table: "Inventory",
                column: "MakeId",
                principalTable: "Makes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Inventory_Makes_MakeId",
                schema: "dbo",
                table: "Inventory");

            migrationBuilder.DropColumn(
                name: "DateBuilt",
                schema: "dbo",
                table: "Inventory");

            migrationBuilder.DropColumn(
                name: "Display",
                schema: "dbo",
                table: "Inventory");

            migrationBuilder.DropColumn(
                name: "IsDrivable",
                schema: "dbo",
                table: "Inventory");

            migrationBuilder.RenameIndex(
                name: "IX_Radios_CarId",
                table: "Radios",
                newName: "IX_Radios_InventoryId");

            migrationBuilder.AlterColumn<string>(
                name: "Color",
                schema: "dbo",
                table: "Inventory",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(50)",
                oldMaxLength: 50,
                oldDefaultValue: "Black");

            migrationBuilder.AddForeignKey(
                name: "FK_Inventory_Makes_MakeId",
                schema: "dbo",
                table: "Inventory",
                column: "MakeId",
                principalTable: "Makes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
