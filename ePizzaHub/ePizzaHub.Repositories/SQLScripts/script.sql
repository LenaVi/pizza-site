USE [Pizza]
GO
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (1, N'Вегетарианский рай', N'Потрясающая шестерка! Веганский сыр, шампиньоны, помидоры, перец болгарский, маслины, лук красный', CAST(470.00 AS Decimal(18, 2)), N'images\20210626T162238342.png', 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (6, N'Груша с дорблю', N'
Соус «Сливочный», сыр «Моцарелла», сыр «Дорблю», груша', CAST(590.00 AS Decimal(18, 2)), N'images\grushi-s-syrom-bri_1557339956_6_max.jpg', 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (7, N'Пицца - 6 сыров', N'Cоус «Сити 
сыры: «Моцарелла», «Дор-Блю», «Эдам», «Чеддер», «Гауда», «Пармезан»', CAST(640.00 AS Decimal(18, 2)), N'images\20210627T191730366.jpg', 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (9, N'Пепперони', N'Фирменный соус, сыр «Моцарелла», колбаса «Пепперони», шампиньоны', CAST(560.00 AS Decimal(18, 2)), N'images\20210626T163454931.jpg', 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (10, N'
Гавайская карри', N'Соус «Карри», сыр «Моцарелла», ветчина, куриные грудки, ананасы', CAST(500.00 AS Decimal(18, 2)), N'images/20210626T163642239.webp', 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (11, N'Четыре сезона', N'Сыр «Моцарелла», колбаса «Пепперони», ветчина, куриные грудки, шампиньоны, ананасы', CAST(540.00 AS Decimal(18, 2)), N'images/20210626T163815408.webp', 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (13, N'Choco Lava Cake', N'Любители шоколада в восторге! Нежная, липкая расплавленная лава внутри шоколадного торта', CAST(220.00 AS Decimal(18, 2)), N'images/20210627T191941041.jpg', 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (14, N'Шоколадный чизкейк', N'Нежный, воздушный и очень шоколадный чизкейк, состоящий из трех шоколадных слоев, сведет с ума всех сладкоежек', CAST(270.00 AS Decimal(18, 2)), N'images/20210627T192019612.jpg', 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (15, N'Coca-cola', N'Игристый и освежающий напиток', CAST(120.00 AS Decimal(18, 2)), N'images/20210627T192127001.png', 3, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (16, N'Fanta', N'Вкусный напиток со вкусом апельсина', CAST(90.00 AS Decimal(18, 2)), N'images/20210627T192226816.png', 3, 1)
SET IDENTITY_INSERT [dbo].[Items] OFF
