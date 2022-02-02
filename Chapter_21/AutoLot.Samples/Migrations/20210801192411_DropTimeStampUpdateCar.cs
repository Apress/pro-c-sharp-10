using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace AutoLot.Samples.Migrations
{
    public partial class DropTimeStampUpdateCar : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CarDriver_Cars_CarsId",
                table: "CarDriver");

            migrationBuilder.DropForeignKey(
                name: "FK_Cars_Makes_MakeId",
                table: "Cars");

            migrationBuilder.DropForeignKey(
                name: "FK_Radios_Cars_CarId",
                table: "Radios");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Cars",
                table: "Cars");

            migrationBuilder.DropColumn(
                name: "TimeStamp",
                table: "Radios");

            migrationBuilder.DropColumn(
                name: "TimeStamp",
                table: "Makes");

            migrationBuilder.DropColumn(
                name: "TimeStamp",
                table: "Drivers");

            migrationBuilder.DropColumn(
                name: "TimeStamp",
                table: "Cars");

            migrationBuilder.EnsureSchema(
                name: "dbo");

            migrationBuilder.RenameTable(
                name: "Cars",
                newName: "Inventory",
                newSchema: "dbo");

            migrationBuilder.RenameIndex(
                name: "IX_Cars_MakeId",
                schema: "dbo",
                table: "Inventory",
                newName: "IX_Inventory_MakeId");

            migrationBuilder.AlterColumn<string>(
                name: "PetName",
                schema: "dbo",
                table: "Inventory",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(50)",
                oldMaxLength: 50,
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Color",
                schema: "dbo",
                table: "Inventory",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(50)",
                oldMaxLength: 50,
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_Inventory",
                schema: "dbo",
                table: "Inventory",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_CarDriver_Inventory_CarsId",
                table: "CarDriver",
                column: "CarsId",
                principalSchema: "dbo",
                principalTable: "Inventory",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Inventory_Makes_MakeId",
                schema: "dbo",
                table: "Inventory",
                column: "MakeId",
                principalTable: "Makes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Radios_Inventory_CarId",
                table: "Radios",
                column: "CarId",
                principalSchema: "dbo",
                principalTable: "Inventory",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CarDriver_Inventory_CarsId",
                table: "CarDriver");

            migrationBuilder.DropForeignKey(
                name: "FK_Inventory_Makes_MakeId",
                schema: "dbo",
                table: "Inventory");

            migrationBuilder.DropForeignKey(
                name: "FK_Radios_Inventory_CarId",
                table: "Radios");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Inventory",
                schema: "dbo",
                table: "Inventory");

            migrationBuilder.RenameTable(
                name: "Inventory",
                schema: "dbo",
                newName: "Cars");

            migrationBuilder.RenameIndex(
                name: "IX_Inventory_MakeId",
                table: "Cars",
                newName: "IX_Cars_MakeId");

            migrationBuilder.AddColumn<byte[]>(
                name: "TimeStamp",
                table: "Radios",
                type: "varbinary(max)",
                nullable: true);

            migrationBuilder.AddColumn<byte[]>(
                name: "TimeStamp",
                table: "Makes",
                type: "varbinary(max)",
                nullable: true);

            migrationBuilder.AddColumn<byte[]>(
                name: "TimeStamp",
                table: "Drivers",
                type: "varbinary(max)",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PetName",
                table: "Cars",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(50)",
                oldMaxLength: 50);

            migrationBuilder.AlterColumn<string>(
                name: "Color",
                table: "Cars",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(50)",
                oldMaxLength: 50);

            migrationBuilder.AddColumn<byte[]>(
                name: "TimeStamp",
                table: "Cars",
                type: "varbinary(max)",
                nullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_Cars",
                table: "Cars",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_CarDriver_Cars_CarsId",
                table: "CarDriver",
                column: "CarsId",
                principalTable: "Cars",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Cars_Makes_MakeId",
                table: "Cars",
                column: "MakeId",
                principalTable: "Makes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Radios_Cars_CarId",
                table: "Radios",
                column: "CarId",
                principalTable: "Cars",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
