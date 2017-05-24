
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/24/2017 10:58:04
-- Generated from EDMX file: D:\Visual Studio Projects\Projects\WPFtaskManager\DataBaseProj\EntityModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TaskManDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Project_ToTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Projects] DROP CONSTRAINT [FK_Project_ToTable];
GO
IF OBJECT_ID(N'[dbo].[FK_Project_ToTable_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Projects] DROP CONSTRAINT [FK_Project_ToTable_1];
GO
IF OBJECT_ID(N'[dbo].[FK_Project_ToTable_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Projects] DROP CONSTRAINT [FK_Project_ToTable_2];
GO
IF OBJECT_ID(N'[dbo].[FK_Task_ToTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks] DROP CONSTRAINT [FK_Task_ToTable];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[CLients]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CLients];
GO
IF OBJECT_ID(N'[dbo].[Owners]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Owners];
GO
IF OBJECT_ID(N'[dbo].[Projects]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Projects];
GO
IF OBJECT_ID(N'[dbo].[Tasks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tasks];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [Id] int  NOT NULL,
    [Nom] nvarchar(50)  NULL,
    [Description] nvarchar(50)  NULL
);
GO

-- Creating table 'CLients'
CREATE TABLE [dbo].[CLients] (
    [Id] int  NOT NULL,
    [Nom] nvarchar(50)  NULL,
    [Prenom] nvarchar(50)  NULL
);
GO

-- Creating table 'Owners'
CREATE TABLE [dbo].[Owners] (
    [Id] int  NOT NULL,
    [Nom] nvarchar(50)  NULL,
    [Prenom] nvarchar(50)  NULL
);
GO

-- Creating table 'Projects'
CREATE TABLE [dbo].[Projects] (
    [Id] int  NOT NULL,
    [Name] nvarchar(50)  NULL,
    [StartDate] datetime  NULL,
    [EndDate] datetime  NULL,
    [OwnerID] int  NULL,
    [ClientID] int  NULL,
    [Description] nvarchar(50)  NULL,
    [CategID] int  NULL
);
GO

-- Creating table 'Tasks'
CREATE TABLE [dbo].[Tasks] (
    [Id] int  NOT NULL,
    [ProjectID] int  NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Description] nvarchar(50)  NULL,
    [Start] datetime  NULL,
    [End] datetime  NULL,
    [TimeAmount] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CLients'
ALTER TABLE [dbo].[CLients]
ADD CONSTRAINT [PK_CLients]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Owners'
ALTER TABLE [dbo].[Owners]
ADD CONSTRAINT [PK_Owners]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [PK_Projects]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [PK_Tasks]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CategID] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [FK_Project_ToTable]
    FOREIGN KEY ([CategID])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Project_ToTable'
CREATE INDEX [IX_FK_Project_ToTable]
ON [dbo].[Projects]
    ([CategID]);
GO

-- Creating foreign key on [ClientID] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [FK_Project_ToTable_1]
    FOREIGN KEY ([ClientID])
    REFERENCES [dbo].[CLients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Project_ToTable_1'
CREATE INDEX [IX_FK_Project_ToTable_1]
ON [dbo].[Projects]
    ([ClientID]);
GO

-- Creating foreign key on [OwnerID] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [FK_Project_ToTable_2]
    FOREIGN KEY ([OwnerID])
    REFERENCES [dbo].[Owners]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Project_ToTable_2'
CREATE INDEX [IX_FK_Project_ToTable_2]
ON [dbo].[Projects]
    ([OwnerID]);
GO

-- Creating foreign key on [ProjectID] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [FK_Task_ToTable]
    FOREIGN KEY ([ProjectID])
    REFERENCES [dbo].[Projects]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Task_ToTable'
CREATE INDEX [IX_FK_Task_ToTable]
ON [dbo].[Tasks]
    ([ProjectID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------