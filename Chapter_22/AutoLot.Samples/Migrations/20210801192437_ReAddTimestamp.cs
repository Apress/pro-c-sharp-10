using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace AutoLot.Samples.Migrations
{
    public partial class ReAddTimestamp : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<byte[]>(
                name: "TimeStamp",
                table: "Radios",
                type: "rowversion",
                rowVersion: true,
                nullable: true);

            migrationBuilder.AddColumn<byte[]>(
                name: "TimeStamp",
                table: "Makes",
                type: "rowversion",
                rowVersion: true,
                nullable: true);

            migrationBuilder.AddColumn<byte[]>(
                name: "TimeStamp",
                schema: "dbo",
                table: "Inventory",
                type: "rowversion",
                rowVersion: true,
                nullable: true);

            migrationBuilder.AddColumn<byte[]>(
                name: "TimeStamp",
                table: "Drivers",
                type: "rowversion",
                rowVersion: true,
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "TimeStamp",
                table: "Radios");

            migrationBuilder.DropColumn(
                name: "TimeStamp",
                table: "Makes");

            migrationBuilder.DropColumn(
                name: "TimeStamp",
                schema: "dbo",
                table: "Inventory");

            migrationBuilder.DropColumn(
                name: "TimeStamp",
                table: "Drivers");
        }
    }
}
