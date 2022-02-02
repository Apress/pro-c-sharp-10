IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801173031_Initial')
BEGIN
    CREATE TABLE [Makes] (
        [Id] int NOT NULL IDENTITY,
        [Name] nvarchar(max) NULL,
        [TimeStamp] varbinary(max) NULL,
        CONSTRAINT [PK_Makes] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801173031_Initial')
BEGIN
    CREATE TABLE [Cars] (
        [Id] int NOT NULL IDENTITY,
        [Color] nvarchar(max) NULL,
        [PetName] nvarchar(max) NULL,
        [MakeId] int NOT NULL,
        [TimeStamp] varbinary(max) NULL,
        CONSTRAINT [PK_Cars] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Cars_Makes_MakeId] FOREIGN KEY ([MakeId]) REFERENCES [Makes] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801173031_Initial')
BEGIN
    CREATE INDEX [IX_Cars_MakeId] ON [Cars] ([MakeId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801173031_Initial')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210801173031_Initial', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801173752_Radio')
BEGIN
    CREATE TABLE [Radios] (
        [Id] int NOT NULL IDENTITY,
        [HasTweeters] bit NOT NULL,
        [HasSubWoofers] bit NOT NULL,
        [RadioId] nvarchar(max) NULL,
        [CarId] int NOT NULL,
        [TimeStamp] varbinary(max) NULL,
        CONSTRAINT [PK_Radios] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Radios_Cars_CarId] FOREIGN KEY ([CarId]) REFERENCES [Cars] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801173752_Radio')
BEGIN
    CREATE UNIQUE INDEX [IX_Radios_CarId] ON [Radios] ([CarId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801173752_Radio')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210801173752_Radio', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801175308_Drivers')
BEGIN
    CREATE TABLE [Drivers] (
        [Id] int NOT NULL IDENTITY,
        [FirstName] nvarchar(max) NULL,
        [LastName] nvarchar(max) NULL,
        [TimeStamp] varbinary(max) NULL,
        CONSTRAINT [PK_Drivers] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801175308_Drivers')
BEGIN
    CREATE TABLE [CarDriver] (
        [CarsId] int NOT NULL,
        [DriversId] int NOT NULL,
        CONSTRAINT [PK_CarDriver] PRIMARY KEY ([CarsId], [DriversId]),
        CONSTRAINT [FK_CarDriver_Cars_CarsId] FOREIGN KEY ([CarsId]) REFERENCES [Cars] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_CarDriver_Drivers_DriversId] FOREIGN KEY ([DriversId]) REFERENCES [Drivers] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801175308_Drivers')
BEGIN
    CREATE INDEX [IX_CarDriver_DriversId] ON [CarDriver] ([DriversId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801175308_Drivers')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210801175308_Drivers', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801185633_StringAndTableConventionOverride')
BEGIN
    DECLARE @var0 sysname;
    SELECT @var0 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Radios]') AND [c].[name] = N'RadioId');
    IF @var0 IS NOT NULL EXEC(N'ALTER TABLE [Radios] DROP CONSTRAINT [' + @var0 + '];');
    ALTER TABLE [Radios] ALTER COLUMN [RadioId] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801185633_StringAndTableConventionOverride')
BEGIN
    DECLARE @var1 sysname;
    SELECT @var1 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Makes]') AND [c].[name] = N'Name');
    IF @var1 IS NOT NULL EXEC(N'ALTER TABLE [Makes] DROP CONSTRAINT [' + @var1 + '];');
    ALTER TABLE [Makes] ALTER COLUMN [Name] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801185633_StringAndTableConventionOverride')
BEGIN
    DECLARE @var2 sysname;
    SELECT @var2 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Drivers]') AND [c].[name] = N'LastName');
    IF @var2 IS NOT NULL EXEC(N'ALTER TABLE [Drivers] DROP CONSTRAINT [' + @var2 + '];');
    ALTER TABLE [Drivers] ALTER COLUMN [LastName] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801185633_StringAndTableConventionOverride')
BEGIN
    DECLARE @var3 sysname;
    SELECT @var3 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Drivers]') AND [c].[name] = N'FirstName');
    IF @var3 IS NOT NULL EXEC(N'ALTER TABLE [Drivers] DROP CONSTRAINT [' + @var3 + '];');
    ALTER TABLE [Drivers] ALTER COLUMN [FirstName] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801185633_StringAndTableConventionOverride')
BEGIN
    DECLARE @var4 sysname;
    SELECT @var4 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Cars]') AND [c].[name] = N'PetName');
    IF @var4 IS NOT NULL EXEC(N'ALTER TABLE [Cars] DROP CONSTRAINT [' + @var4 + '];');
    ALTER TABLE [Cars] ALTER COLUMN [PetName] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801185633_StringAndTableConventionOverride')
BEGIN
    DECLARE @var5 sysname;
    SELECT @var5 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Cars]') AND [c].[name] = N'Color');
    IF @var5 IS NOT NULL EXEC(N'ALTER TABLE [Cars] DROP CONSTRAINT [' + @var5 + '];');
    ALTER TABLE [Cars] ALTER COLUMN [Color] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801185633_StringAndTableConventionOverride')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210801185633_StringAndTableConventionOverride', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    ALTER TABLE [CarDriver] DROP CONSTRAINT [FK_CarDriver_Cars_CarsId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    ALTER TABLE [Cars] DROP CONSTRAINT [FK_Cars_Makes_MakeId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    ALTER TABLE [Radios] DROP CONSTRAINT [FK_Radios_Cars_CarId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    ALTER TABLE [Cars] DROP CONSTRAINT [PK_Cars];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    DECLARE @var6 sysname;
    SELECT @var6 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Radios]') AND [c].[name] = N'TimeStamp');
    IF @var6 IS NOT NULL EXEC(N'ALTER TABLE [Radios] DROP CONSTRAINT [' + @var6 + '];');
    ALTER TABLE [Radios] DROP COLUMN [TimeStamp];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    DECLARE @var7 sysname;
    SELECT @var7 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Makes]') AND [c].[name] = N'TimeStamp');
    IF @var7 IS NOT NULL EXEC(N'ALTER TABLE [Makes] DROP CONSTRAINT [' + @var7 + '];');
    ALTER TABLE [Makes] DROP COLUMN [TimeStamp];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    DECLARE @var8 sysname;
    SELECT @var8 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Drivers]') AND [c].[name] = N'TimeStamp');
    IF @var8 IS NOT NULL EXEC(N'ALTER TABLE [Drivers] DROP CONSTRAINT [' + @var8 + '];');
    ALTER TABLE [Drivers] DROP COLUMN [TimeStamp];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    DECLARE @var9 sysname;
    SELECT @var9 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Cars]') AND [c].[name] = N'TimeStamp');
    IF @var9 IS NOT NULL EXEC(N'ALTER TABLE [Cars] DROP CONSTRAINT [' + @var9 + '];');
    ALTER TABLE [Cars] DROP COLUMN [TimeStamp];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    EXEC sp_rename N'[Cars]', N'Inventory';
    ALTER SCHEMA [dbo] TRANSFER [Inventory];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    EXEC sp_rename N'[dbo].[Inventory].[IX_Cars_MakeId]', N'IX_Inventory_MakeId', N'INDEX';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    DECLARE @var10 sysname;
    SELECT @var10 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[dbo].[Inventory]') AND [c].[name] = N'PetName');
    IF @var10 IS NOT NULL EXEC(N'ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [' + @var10 + '];');
    ALTER TABLE [dbo].[Inventory] ALTER COLUMN [PetName] nvarchar(50) NOT NULL;
    ALTER TABLE [dbo].[Inventory] ADD DEFAULT N'' FOR [PetName];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    DECLARE @var11 sysname;
    SELECT @var11 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[dbo].[Inventory]') AND [c].[name] = N'Color');
    IF @var11 IS NOT NULL EXEC(N'ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [' + @var11 + '];');
    ALTER TABLE [dbo].[Inventory] ALTER COLUMN [Color] nvarchar(50) NOT NULL;
    ALTER TABLE [dbo].[Inventory] ADD DEFAULT N'' FOR [Color];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    ALTER TABLE [dbo].[Inventory] ADD CONSTRAINT [PK_Inventory] PRIMARY KEY ([Id]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    ALTER TABLE [CarDriver] ADD CONSTRAINT [FK_CarDriver_Inventory_CarsId] FOREIGN KEY ([CarsId]) REFERENCES [dbo].[Inventory] ([Id]) ON DELETE CASCADE;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    ALTER TABLE [dbo].[Inventory] ADD CONSTRAINT [FK_Inventory_Makes_MakeId] FOREIGN KEY ([MakeId]) REFERENCES [Makes] ([Id]) ON DELETE CASCADE;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    ALTER TABLE [Radios] ADD CONSTRAINT [FK_Radios_Inventory_CarId] FOREIGN KEY ([CarId]) REFERENCES [dbo].[Inventory] ([Id]) ON DELETE CASCADE;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192411_DropTimeStampUpdateCar')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210801192411_DropTimeStampUpdateCar', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192437_ReAddTimestamp')
BEGIN
    ALTER TABLE [Radios] ADD [TimeStamp] rowversion NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192437_ReAddTimestamp')
BEGIN
    ALTER TABLE [Makes] ADD [TimeStamp] rowversion NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192437_ReAddTimestamp')
BEGIN
    ALTER TABLE [dbo].[Inventory] ADD [TimeStamp] rowversion NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192437_ReAddTimestamp')
BEGIN
    ALTER TABLE [Drivers] ADD [TimeStamp] rowversion NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801192437_ReAddTimestamp')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210801192437_ReAddTimestamp', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801193205_UpdateRadio')
BEGIN
    ALTER TABLE [Radios] DROP CONSTRAINT [FK_Radios_Inventory_CarId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801193205_UpdateRadio')
BEGIN
    EXEC sp_rename N'[Radios].[CarId]', N'InventoryId', N'COLUMN';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801193205_UpdateRadio')
BEGIN
    EXEC sp_rename N'[Radios].[IX_Radios_CarId]', N'IX_Radios_InventoryId', N'INDEX';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801193205_UpdateRadio')
BEGIN
    DECLARE @var12 sysname;
    SELECT @var12 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Radios]') AND [c].[name] = N'RadioId');
    IF @var12 IS NOT NULL EXEC(N'ALTER TABLE [Radios] DROP CONSTRAINT [' + @var12 + '];');
    ALTER TABLE [Radios] ALTER COLUMN [RadioId] nvarchar(50) NOT NULL;
    ALTER TABLE [Radios] ADD DEFAULT N'' FOR [RadioId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801193205_UpdateRadio')
BEGIN
    ALTER TABLE [Radios] ADD CONSTRAINT [FK_Radios_Inventory_InventoryId] FOREIGN KEY ([InventoryId]) REFERENCES [dbo].[Inventory] ([Id]) ON DELETE CASCADE;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801193205_UpdateRadio')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210801193205_UpdateRadio', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801194058_DriverMake')
BEGIN
    DECLARE @var13 sysname;
    SELECT @var13 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Makes]') AND [c].[name] = N'Name');
    IF @var13 IS NOT NULL EXEC(N'ALTER TABLE [Makes] DROP CONSTRAINT [' + @var13 + '];');
    ALTER TABLE [Makes] ALTER COLUMN [Name] nvarchar(50) NOT NULL;
    ALTER TABLE [Makes] ADD DEFAULT N'' FOR [Name];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801194058_DriverMake')
BEGIN
    DECLARE @var14 sysname;
    SELECT @var14 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Drivers]') AND [c].[name] = N'LastName');
    IF @var14 IS NOT NULL EXEC(N'ALTER TABLE [Drivers] DROP CONSTRAINT [' + @var14 + '];');
    ALTER TABLE [Drivers] ALTER COLUMN [LastName] nvarchar(50) NOT NULL;
    ALTER TABLE [Drivers] ADD DEFAULT N'' FOR [LastName];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801194058_DriverMake')
BEGIN
    DECLARE @var15 sysname;
    SELECT @var15 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Drivers]') AND [c].[name] = N'FirstName');
    IF @var15 IS NOT NULL EXEC(N'ALTER TABLE [Drivers] DROP CONSTRAINT [' + @var15 + '];');
    ALTER TABLE [Drivers] ALTER COLUMN [FirstName] nvarchar(50) NOT NULL;
    ALTER TABLE [Drivers] ADD DEFAULT N'' FOR [FirstName];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801194058_DriverMake')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210801194058_DriverMake', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801201752_FluentUpdates')
BEGIN
    ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [FK_Inventory_Makes_MakeId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801201752_FluentUpdates')
BEGIN
    EXEC sp_rename N'[Radios].[IX_Radios_InventoryId]', N'IX_Radios_CarId', N'INDEX';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801201752_FluentUpdates')
BEGIN
    DECLARE @var16 sysname;
    SELECT @var16 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[dbo].[Inventory]') AND [c].[name] = N'Color');
    IF @var16 IS NOT NULL EXEC(N'ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [' + @var16 + '];');
    ALTER TABLE [dbo].[Inventory] ADD DEFAULT N'Black' FOR [Color];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801201752_FluentUpdates')
BEGIN
    ALTER TABLE [dbo].[Inventory] ADD [DateBuilt] datetime2 NULL DEFAULT (getdate());
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801201752_FluentUpdates')
BEGIN
    ALTER TABLE [dbo].[Inventory] ADD [IsDrivable] bit NOT NULL DEFAULT CAST(1 AS bit);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801201752_FluentUpdates')
BEGIN
    EXEC(N'ALTER TABLE [dbo].[Inventory] ADD [Display] AS [PetName] + '' ('' + [Color] + '')'' PERSISTED');
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801201752_FluentUpdates')
BEGIN
    ALTER TABLE [dbo].[Inventory] ADD CONSTRAINT [FK_Inventory_Makes_MakeId] FOREIGN KEY ([MakeId]) REFERENCES [Makes] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801201752_FluentUpdates')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210801201752_FluentUpdates', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801203000_FluentManyToMany')
BEGIN
    DROP TABLE [CarDriver];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801203000_FluentManyToMany')
BEGIN
    CREATE TABLE [dbo].[InventoryToDrivers] (
        [DriverId] int NOT NULL,
        [InventoryId] int NOT NULL,
        [Id] int NOT NULL IDENTITY,
        [TimeStamp] rowversion NULL,
        CONSTRAINT [PK_InventoryToDrivers] PRIMARY KEY ([InventoryId], [DriverId]),
        CONSTRAINT [FK_InventoryDriver_Drivers_DriverId] FOREIGN KEY ([DriverId]) REFERENCES [Drivers] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_InventoryDriver_Inventory_InventoryId] FOREIGN KEY ([InventoryId]) REFERENCES [dbo].[Inventory] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801203000_FluentManyToMany')
BEGIN
    CREATE INDEX [IX_InventoryToDrivers_DriverId] ON [dbo].[InventoryToDrivers] ([DriverId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801203000_FluentManyToMany')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210801203000_FluentManyToMany', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801210318_FixTableSchemas')
BEGIN
    ALTER SCHEMA [dbo] TRANSFER [Radios];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801210318_FixTableSchemas')
BEGIN
    ALTER SCHEMA [dbo] TRANSFER [Makes];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801210318_FixTableSchemas')
BEGIN
    ALTER SCHEMA [dbo] TRANSFER [Drivers];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801210318_FixTableSchemas')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210801210318_FixTableSchemas', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210801222651_PersonInfoOnDriver')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210801222651_PersonInfoOnDriver', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210803014430_Price')
BEGIN
    ALTER TABLE [dbo].[Inventory] ADD [Price] decimal(18,2) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210803014430_Price')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210803014430_Price', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210926233739_ShadowProperty')
BEGIN
    ALTER TABLE [dbo].[Inventory] ADD [IsDeleted] bit NULL DEFAULT CAST(1 AS bit);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210926233739_ShadowProperty')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210926233739_ShadowProperty', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210927001245_SchemaAdd')
BEGIN
    IF SCHEMA_ID(N'audits') IS NULL EXEC(N'CREATE SCHEMA [audits];');
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210927001245_SchemaAdd')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210927001245_SchemaAdd', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210927001419_CustomTemporal')
BEGIN
    ALTER TABLE [dbo].[Inventory] ADD [ValidFrom] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210927001419_CustomTemporal')
BEGIN
    ALTER TABLE [dbo].[Inventory] ADD [ValidTo] datetime2 NOT NULL DEFAULT '9999-12-31T23:59:59.9999999';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210927001419_CustomTemporal')
BEGIN
    ALTER TABLE [dbo].[Inventory] ADD PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210927001419_CustomTemporal')
BEGIN
    ALTER TABLE [dbo].[Inventory] SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = [audits].[InventoryAudit]))

END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210927001419_CustomTemporal')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210927001419_CustomTemporal', N'6.0.0-rc.1.21452.10');
END;
GO

COMMIT;
GO

