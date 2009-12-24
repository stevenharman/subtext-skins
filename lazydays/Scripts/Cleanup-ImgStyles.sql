UPDATE subtext_Content
SET [Text] = Replace(Cast([Text] AS NVARCHAR(Max)), 'style="border-top-width: 0px; border-left-width: 0px; border-bottom-width: 0px; border-right-width: 0px"', '')
WHERE BlogId = 3

UPDATE subtext_Content
SET [Text] = Replace(Cast([Text] AS NVARCHAR(Max)), 'style="border-right: 0px; border-top: 0px; border-left: 0px; border-bottom: 0px"', '')
WHERE BlogId = 3

