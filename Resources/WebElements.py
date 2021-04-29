# Home Login Page Locators
txtbox_username = "xpath://*[@id='l-login']/div[1]/div/input"
txtbox_password = "xpath://*[@id='l-login']/div[2]/div/input"
btn_login = "xpath://*[@id='l-login']/button"

# Home Main Page
iconoMainPage = "//*[@id='0side-menu']/li[1]/div[1]/img"
iconoMainPagev2 = "//*[@id='logo_cliente']/img"

# Parámetros Generales --
btn_ParamGeneral = "//*[@id='side-menu']/li[5]/ul/li[8]/a"
label_pageParamGeneral = "//*[@id='page-wrapper']/xdf-breadcrumb/div/div[1]/h2"
formatNum = "//*[@id='mat-select-1']/div/div[1]"
formatNum1 = "//*[@id='mat-option-8']"
formatNum2 = "//*[@id='mat-option-9']"
btn_saveformatNum = "//*[@id='tab-1']/div/div[2]/div/div/div/button"
btn_confirmformatNum = "//*[@id='mat-dialog-0']/dialog-overview-example-dialog/div[3]/button[2]"

linkOtrasOpciones = "//*[@id='page-wrapper']/div/byte-general-parameter/div/div/div/form/div/div/ul/li[2]/a"
formatNumNeg = "//*[@id='mat-select-2']/div/div[1]"
formatNumNull = "//*[@id='mat-option-2']"
formatNumNeg1 = "//*[@id='mat-option-3']"
formatNumNeg2 = "//*[@id='mat-option-4']"
selectCheck = "//*[@id='mat-checkbox-1']/label/div"
btn_saveOtrasOpciones = "//*[@id='tab-2']/div/div[2]/div/div/div/button"
btn_confirmOtrasOpciones = "//*[@id='mat-dialog-1']/dialog-overview-example-dialog/div[3]/button[2]"

linkFormatFecha = "//*[@id='page-wrapper']/div/byte-general-parameter/div/div/div/form/div/div/ul/li[3]/a"
FormatFecha = "//*[@id='mat-select-3']/div/div[1]"
FormatFechaNull = "//*[@id='mat-option-5']"
FormatFecha1 = "//*[@id='mat-option-6']"
FormatFecha2 = "//*[@id='mat-option-7']"
btn_saveFormatFecha = "//*[@id='tab-3']/div/div[2]/div/div/div/button"
btn_confirmFormatFecha= "//*[@id='mat-dialog-2']/dialog-overview-example-dialog/div[3]/button[2]"

linkConfigContable = "//*[@id='page-wrapper']/div/byte-general-parameter/div/div/div/form/div/div/ul/li[4]/a"
MinCtaCont = "//*[@id='mat-input-0']"
MaxCtaCont = "//*[@id='mat-input-1']"
selectCheck1 = "//*[@id='mat-checkbox-2']/label/div"
selectCheck2 = "//*[@id='mat-checkbox-3']/label/div"
btn_saveConfigContab = "//*[@id='tab-4']/div/div[2]/div/div/div/button"
btn_confirmConfigContab = "//*[@id='mat-dialog-3']/dialog-overview-example-dialog/div[3]/button[2]"

linkEntidRecaud = "//*[@id='page-wrapper']/div/byte-general-parameter/div/div/div/form/div/div/ul/li[5]/a"
diasLatencia = "//*[@id='mat-input-2']"
btn_saveEntidRecaud = "//*[@id='tab-5']/div/div[2]/div/div/div/button"
btn_confirmEntidRecaud = "//*[@id='mat-dialog-4']/dialog-overview-example-dialog/div[3]/button[2]"


# Tipo de Documento Contable Locators
btn_TipDocContable = "//*[@id='side-menu']/li[5]/ul/li[9]/a"
label_pageTipDocContable = "//*[@id='page-wrapper']/xdf-breadcrumb/div/div[1]/h2"

btn_newTipDocContable = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/xdf-data-table-options-bar/div/button"
codTipDocContable = "//*[@id='mat-input-0']"
descTipDocContable = "//*[@id='mat-input-1']"
btn_saveTipDocContable = "//*[@id='page-wrapper']/div/xdf-crud-detail/div/div/div/div[2]/xdf-crud-standard-detail/form/div[2]/div/div/button"

FiltroTipDocContable = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[1]/xdf-ngx-tags-input/div/input[1]"
FiltroCodTipDocContable = "//*[@id='mat-option-2']"
FiltroDescTipDocContable = "//*[@id='mat-option-3']"
FiltrarTipDocContable = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[1]/xdf-ngx-tags-input/div/button[1]"
EliminarFiltrosTipDocContable = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[1]/xdf-ngx-tags-input/div/button[2]"

btn_editTipDocContable = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[2]/table/tbody/tr[1]/td[3]/div/button[1]"
descEditTipDocContable = "//*[@id='mat-input-1']"

btn_deleteTipDocContable = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[2]/table/tbody/tr[1]/td[3]/div/button[2]"
btn_confirmDeleteTipDocContable= "//*[@id='mat-dialog-0']/xdf-confirmation-dialog/div[2]/button[2]"


# Forma de Pago Locators
btn_configuration = "//*[@id='side-menu']/li[5]/a"
btn_FormaDePago = "//*[@id='side-menu']/li[5]/ul/li[6]/a"
label_pageFormaDePago = "//*[@id='page-wrapper']/xdf-breadcrumb/div/div[1]/h2"

btn_newFormaPago = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/xdf-data-table-options-bar/div/button"
abreviaturaFormaPago = "//*[@id='mat-input-0']"
nombreFormaPago = "//*[@id='mat-input-1']"
descripcionFormaPago = "//*[@id='mat-input-2']"
flagValorConciliableFormaPago = "//*[@id='mat-checkbox-2']/label/div"
linkEquivComercFormaPago = "//*[@id='page-wrapper']/div/byte-payment-method-detail/div/div/div/div/div/ul/li[2]/a"
valueIMGFormaPago = "//*[@id='mat-input-3']"
btn_saveFormaPago = "//*[@id='page-wrapper']/div/byte-payment-method-detail/div/div/div/div/div/div/div[3]/div/div/div/button"

FiltroFormaPago = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[1]/xdf-ngx-tags-input/div/input[1]"
FiltroIdFormaPago = "//*[@id='mat-option-2']"
FiltroNomFormaPago = "//*[@id='mat-option-3']"
FiltroDescFormaPago = "//*[@id='mat-option-4']"
FiltrarFormaPago = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[1]/xdf-ngx-tags-input/div/button[1]"
EliminarFiltrosFormaPago = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[1]/xdf-ngx-tags-input/div/button[2]"

btn_editFormaPago = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[2]/table/tbody/tr/td[4]/div/button[1]"
nombreEditFormaPago = "//*[@id='mat-input-1']"
descripcionEditFormaPago = "//*[@id='mat-input-2']"
valueEditIMGFormaPago = "//*[@id='mat-input-3']"
btn_confirmEditFormaPago = "//*[@id='mat-dialog-0']/dialog-overview-example-dialog/div[3]/button[2]"

btn_deleteFormaPago = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[2]/table/tbody/tr/td[4]/div/button[2]"
btn_confirmDeleteFormaPago = "//*[@id='mat-dialog-0']/xdf-confirmation-dialog/div[2]/button[2]"

# Accounting Account Maintenance Locators
btn_configuration = "xpath://*[@id='side-menu']/li[5]/a"
btn_accountingAccount = "xpath://*[@id='side-menu']/li[5]/ul/li[1]/a"
label_pageAccountingAccount = "xpath://*[@id='page-wrapper']/xdf-breadcrumb/div/div[1]/h2"

boton_New = "//*[@id='page-wrapper']/div/byte-accounting-account-table/div/div/div/div/div[2]/div/div[2]/button"
NumeroCta = "//*[@id='mat-input-0']"
DescripcionCta = "//*[@id='mat-input-1']"
SelectConfigContable = "//*[@id='mat-select-3']/div/div[1]/span"
ChooseValueDeudora = "//*[@id='mat-option-8']"
ChooseValueAcreedora = "//*[@id='mat-option-9']"
LinkEquivalComer = "//*[@id='page-wrapper']/div/byte-accounting-account-detail/div/div/div/div/div/ul/li[2]/a"
SAPValue = "//*[@id='mat-input-2']"
LinkValueCompl = "//*[@id='page-wrapper']/div/byte-accounting-account-detail/div/div/div/div/div/ul/li[3]/a"
ValueSAPPos = "//*[@id='mat-input-3']"
ValueSAPNeg = "//*[@id='mat-input-4']"
boton_Save = "//*[@id='page-wrapper']/div/byte-accounting-account-detail/div/div/div/div/div/div/div[4]/div/div/div/button"

filtros = "//*[@id='page-wrapper']/div/byte-accounting-account-table/div/div/div/div/div[2]/div/div[1]/div[1]/xdf-ngx-tags-input/div/input[1]"
FiltroNumeroID = "//*[@id='mat-option-2']"
FiltroNumeroCta = "//*[@id='mat-option-3']"
boton_Filtrar = "//*[@id='page-wrapper']/div/byte-accounting-account-table/div/div/div/div/div[2]/div/div[1]/div[1]/xdf-ngx-tags-input/div/button[1]"
boton_DeleteFiltros = "//*[@id='page-wrapper']/div/byte-accounting-account-table/div/div/div/div/div[2]/div/div[1]/div[1]/xdf-ngx-tags-input/div/button[2]"

boton_Edit = "//*[@id='page-wrapper']/div/byte-accounting-account-table/div/div/div/div/div[2]/div/div[1]/div[2]/table/tbody/tr[1]/td[4]/div/button[1]"
DescripcionCtaEdit = "//*[@id='mat-input-1']"
SAPValueEdit = "//*[@id='mat-input-2']"
ValueSAPPosEdit = "//*[@id='mat-input-3']"
ValueSAPNegEdit = "//*[@id='mat-input-4']"
btn_confirmEditAccount = "//*[@id='mat-dialog-0']/dialog-overview-example-dialog/div[3]/button[2]"

boton_Delete = "//*[@id='page-wrapper']/div/byte-accounting-account-table/div/div/div/div/div[2]/div/div[1]/div[2]/table/tbody/tr/td[4]/div/button[2]"
boton_ConfirmDelete = "//*[@id='mat-dialog-0']/xdf-confirmation-dialog/div[2]/button[2]"



# Home Support Document Maintenance Locators
btn_configuration = "xpath://*[@id='side-menu']/li[5]/a"
btn_documentsupport = "xpath://*[@id='side-menu']/li[5]/ul/li[3]/a"
label_pageSupportDocument = "xpath://*[@id='page-wrapper']/xdf-breadcrumb/div/div[1]/h2"

botonNuevo = "//*[@id='page-wrapper']/div/byte-support-documents/div/div/div/div/div[2]/div/div[2]/button"
SeccionEquivComercial = "//*[@id='page-wrapper']/div/byte-support-documents-detail/div/div/div/div/div/ul/li[2]/a"
botonGuardar = "//*[@id='tab-2']/div/div[2]/div/div/div/button"
botonGuardarv2 = "//*[@id='tab-2']/div/div/div/div/div/button"
OpcionFiltro = "//*[@id=\'page-wrapper\']/div/byte-support-documents/div/div/div/div/div[2]/div/div[1]/div[1]/xdf-ngx-tags-input/div/input[1]"
FiltroByCodigo = "//*[@id=\'mat-option-8\']/span/span"
FiltroByNombre = "//*[@id=\'mat-option-9\']/span/span"
BtnEliminar = "(//button[@class=\'btn btn-default btn-sm\'])[2]"
BtnEliminarv2 = "//*[@id='page-wrapper']/div/byte-support-documents/div/div/div/div/div[2]/div/div[1]/div[2]/div/div/table/tbody/tr/td[4]/div/button[2]"
OpcionBuscar = "//*[@id=\'page-wrapper\']/div/byte-support-documents/div/div/div/div/div[2]/div/div[1]/div[1]/xdf-ngx-tags-input/div/button[1]"
OpcionBuscarv2 = "//*[@id='page-wrapper']/div/byte-support-documents/div/div/div/div/div[2]/div/div[1]/div[1]/xdf-ngx-tags-input/div/button[1]"

listaDocumentos = "//table[@class='crud-table table table-striped table-hover mat-table']"
BtnEditar = "//button[@class=\'btn btn-default btn-sm\']"
BtnEditarv2 = "//*[@id='page-wrapper']/div/byte-support-documents/div/div/div/div/div[2]/div/div[1]/div[2]/div/div/table/tbody/tr/td[4]/div/button[1]"
BtnConfirmaEliminacion = "(//button[@class=\'mat-button mat-button-base\'])[2]"
BtnConfirmaEliminacionv2 = "//*[@id='mat-dialog-0']/xdf-confirmation-dialog/div[2]/button[2]"
BtnDesactivarFiltro = "//button[@class=\'btn btn-default btn-options\']"

# Home Support Document Maintenance Create Locators
Abreviatura = "xpath://*[@id=\'mat-input-1\']"
Nombre = "xpath://*[@id=\'mat-input-0\']"
Descripcion = "xpath://*[@id=\'mat-input-2\']"
OptionCargo = "css:#mat-radio-3"
OptionAbono = "css:#mat-radio-2"
EquivComercial = "//*[@id=\'page-wrapper\']/div/byte-support-documents-detail/div/div/div/div/div/ul/li[2]/a"
sistemaOrigenSAP = "//*[@id='tab-2']/div/div[1]/div[2]/div/div/div/table/tbody/tr[2]/td[2]/div/input"
sistemaOrigenSAPv2 = "//*[@id='mat-input-3']"
OptionCargoMod = "css:#mat-radio-3"
Nombremod = "//*[@id=\'mat-input-3\']"
Nombremodv2 ="xpath://*[@id='mat-input-0']"
#Nombremodv2 ="css:#mat-input-4"
Descripcionmod = "//*[@id=\'mat-input-5\']"
Descripcionmodv2 = "xpath://*[@id=\'mat-input-2\']"



























#HomePageSearchTextBox = "xpath://*[@id='gh-ac']"
#HomePageSearchButton = "xpath://*[@id='gh-btn']"
#HomePageAdvancedSearchLink = "xpath://*[@id='gh-as-a']"