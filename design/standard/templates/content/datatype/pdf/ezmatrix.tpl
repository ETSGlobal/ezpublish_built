{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{let matrix=$attribute.content
     rowdata=''}

{set-block variable=rowdata}
<tr>
<td>
{section name=ColumnNames loop=$matrix.columns.sequential}
{$ColumnNames:item.name|wash(pdf)}
{delimiter}
</td>
<td>
{/delimiter}
{/section}
</td>
</tr>
<tr>
{section name=Rows loop=$matrix.rows.sequential}
<td>
{section name=Columns loop=$Rows:item.columns}
{$Rows:Columns:item|wash(pdf)}
{delimiter}
</td>
<td>
{/delimiter}
{/section}
</td>
{delimiter}
</tr>
<tr>
{/delimiter}
{/section}
</tr>
{/set-block}

{pdf(table, $rowdata )}

{/let}
