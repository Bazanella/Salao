object SalaoModelConexaoDataSetMongo: TSalaoModelConexaoDataSetMongo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 193
  Width = 257
  object FDMongoDataSet: TFDMongoDataSet
    FormatOptions.AssignedValues = [fvStrsTrim2Len]
    FormatOptions.StrsTrim2Len = True
    Left = 124
    Top = 72
  end
end
