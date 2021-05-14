# =============================================================================

# Home Login Page Locators
txtbox_username = "xpath://*[@id='l-login']/div[1]/div/input"
txtbox_password = "xpath://*[@id='l-login']/div[2]/div/input"
btn_login = "xpath://*[@id='l-login']/button"

# Home Main Page by ROL Locators
iconoMainPage = "//*[@id='0side-menu']/li[1]/div[1]/img"
iconoMainPagev2 = "//*[@id='logo_cliente']/img"

# =============================================================================

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

# =============================================================================

# Home ReasonforDifference Maintenance Locators
btnconfiguration = "xpath://*[@id='side-menu']/li[5]/a"
btn_ReasonDifference = "xpath://*[@id='side-menu']/li[5]/ul/li[7]/a"
labelPageSupportDocument = "xpath://*[@id='page-wrapper']/xdf-breadcrumb/div/div[1]/h2"
boton_Nuevov3 = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/xdf-data-table-options-bar/div/button"

boton_Guardarvf = "//*[@id='page-wrapper']/div/xdf-crud-detail/div/div/div/div[2]/xdf-crud-standard-detail/form/div[2]/div/div/button"
Opcion_Filtrovf = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[1]/xdf-ngx-tags-input/div/input[1]"
FiltroById = "//*[@id='mat-option-365']/span/span"
FiltroByDescripcionvf = "//*[@id='mat-option-3']"
Btn_Eliminar = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[2]/table/tbody/tr/td[4]/div/button[2]"
Opcion_Buscarvf = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[1]/xdf-ngx-tags-input/div/button[1]"
# pendiente de implementacion --> listaDocumentos = "//table[@class='crud-table table table-striped table-hover mat-table']"
Btn_Editar = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[2]/table/tbody/tr/td[4]/div/button[1]"
BtnConfirma_Eliminacionv2 = "//*[@id='mat-dialog-0']/xdf-confirmation-dialog/div[2]/button[2]"
#//*[@id="mat-dialog-0"]/xdf-confirmation-dialog/div[2]/button[2]
BtnDesactivar_Filtro = "//*[@id='page-wrapper']/div/xdf-crud-grid/div/div/div/div[2]/xdf-data-table/div/div/div[1]/xdf-ngx-tags-input/div/button[2]"

# Home ReasonforDifference Create Maintenance Locators
DescricionMotivo = "xpath://*[@id='mat-input-0']"

CtaContableAsociadavf = "//*[@id='mat-select-3']/div/div[1]"
OptionCtaConAsociada = "//*[@id='mat-option-26']"
TipoDocContable = "//*[@id='mat-select-4']/div/div[1]"
OptionTipoDocContable = "//*[@id='mat-option-10']"
OptionTipoDocContable2 = "//*[@id='mat-option-116']"


DescricionMotivomod = "//*[@id='mat-input-0']"
DescricionMotivomod2 = "//*[@id='mat-input-0']"
#//*[@id="mat-input-0"]

CtaContableAsociadamod = "//*[@id='mat-select-3']/div/div[1]"
#//*[@id='mat-select-31']/div/div[1]/span/span
#//*[@id='mat-select-31']/div/div[1]
OptionCtaConAsociadamod = "//*[@id='mat-option-28']"

TipoDocContablemod = "//*[@id='mat-select-4']/div/div[1]"
# //*[@id='mat-select-32']/div/div[1]/span/span
# //*[@id="mat-select-32"]/div/div[1]
OptionTipoDocContablemod = "//*[@id='mat-option-15']"
OptionTipoDocContablemod2 = "//*[@id='mat-option-116']"

# =============================================================================

# Home CommercialEquivalences Maintenance Locators
btnconfigurationEq = "xpath://*[@id='side-menu']/li[5]/a"
btn_CommercialEq = "xpath://*[@id='side-menu']/li[5]/ul/li[5]/a"
labelPageCommercialEq = "xpath://*[@id='page-wrapper']/xdf-breadcrumb/div/div[1]/h2"

boton_NuevoEq = "//*[@id='page-wrapper']/div/byte-commercial-equivalences-list/div/div/div/div/div[2]/div/div[2]/button"
boton_GuardarEq = "//*[@id='tab-7']/div/div[3]/div/div/div/button"
SeccionVal_Origen="//*[@id='page-wrapper']/div/byte-commercial-equivalences-detail/div/div/div/div/div/ul/li[2]/a"
Opcion_FiltroEq = "//*[@id='page-wrapper']/div/byte-commercial-equivalences-list/div/div/div/div/div[2]/div/div[1]/div[1]/xdf-ngx-tags-input/div/input[1]"
# FiltroByIdEq = "//*[@id='mat-option-365']/span/span"
FiltroByDescripcionEq = "//*[@id='mat-option-4']"
Opcion_BuscarEq = "//*[@id='page-wrapper']/div/byte-commercial-equivalences-list/div/div/div/div/div[2]/div/div[1]/div[1]/xdf-ngx-tags-input/div/button[1]"
Btn_EditarEq = "//*[@id='page-wrapper']/div/byte-commercial-equivalences-list/div/div/div/div/div[2]/div/div[1]/div[2]/div/div/table/tbody/tr/td[5]/div/button"

# Home CommercialEquivalences Create Maintenance Locators
SelectionConceptoEq = "xpath://*[@id='mat-select-3']/div/div[1]"
OptionEq = "//*[@id='mat-option-9']"
DescriptionEq = "//*[@id='mat-input-0']"
SelectionOptionTipoEq = "//*[@id='mat-radio-3']"
SelectionOptionVP ="//*[@id='mat-radio-6']"
SelectionOptionVPRevert ="//*[@id='mat-radio-5']"

DescriptionEqMod = "//*[@id='mat-input-0']"
SelectionOptionTipoEqMod = "//*[@id='mat-radio-2']"
SelectionOptionVPMod = "//*[@id='mat-radio-6']"

# =============================================================================

# System Configuration Maintenance Access Locators (SC)
SC_btnSystem = "xpath://*[@id='side-menu']/li[4]/a"
SC_btnConfiguracion = "xpath://*[@id='side-menu']/li[4]/ul/li/a"
SC_lblEncabezado = "xpath://*[@id='page-wrapper']/xdf-breadcrumb/div/div[1]/h2"

# Home System Configuration Maintenance Locators

SCM_secMoneda ="//*[@id='page-wrapper']/div/byte-settings/div/div/div[1]/div/div/div/ul/li[1]/a"
SCL_secLineaNegocio ="//*[@id='page-wrapper']/div/byte-settings/div/div/div[1]/div/div/div/ul/li[2]/a"

SCM_btnEqComercial = "//*[@id='page-wrapper']/div/byte-settings/div/div/div[2]/byte-currency/div/div/div/div[2]/form/div[1]/div[2]/div/button"
SCM_btnGuardar = "//*[@id='page-wrapper']/div/byte-settings/div/div/div[2]/byte-currency/div/div/div/div[2]/div/div/div/div/button"
SCM_btnAccept = "//*[@id='mat-dialog-0']/byte-currency-modal/mat-dialog-actions/button[2]"
SCM_btnConfirmChange ="//*[@id='mat-dialog-1']/dialog-overview-example-dialog/div[3]/button[2]"

# System Configuration Money Create Maintenance Locators

SCM_slcMonedaPrin ="//*[@id='mat-select-1']/div/div[1]"
SCM_optMonedaPrin ="//*[@id='mat-option-4']"

SCM_inpEqComercialIMG = "//*[@id='mat-input-0']"
SCM_inpEqComercialSAP = "//*[@id='mat-input-1']"



SCM_slcMonedaPrinRV ="//*[@id='mat-select-1']/div/div[1]"
SCM_optMonedaPrinRV ="//*[@id='mat-option-5']"

SCM_inpEqComercialIMG_RV = "//*[@id='mat-input-0']"
SCM_inpEqComercialSAP_RV = "//*[@id='mat-input-1']"

# =============================================================================

# ReportsGeneration Access Locators (RG)
RG_btnGestReport = "xpath://*[@id='side-menu']/li[7]/a"
RG_btnGestReportQuery = "xpath://*[@id='side-menu']/li[11]/a"
RG_btnGestReportQueryIU = "xpath://*[@id='side-menu']/li[11]/ul/li[1]/a"
RG_btnGestReportQueryAC = "xpath://*[@id='side-menu']/li[11]/ul/li[2]/a"
RG_secRConsolidado = "xpath://*[@id='page-wrapper']/div/byte-report-manager/byte-report-widget/div/div[3]/div/div/div[1]"
RG_secRInfConciliation = "xpath://*[@id='page-wrapper']/div/byte-report-manager/byte-report-widget/div/div[4]/div/div/div[1]"
RG_lblEncabezado = "xpath://*[@id='page-wrapper']/xdf-breadcrumb/div/div[1]/h2"

#//*[@id="side-menu"]/li[11]/ul/li[1]/a
# Home ReportsGeneration by filter Locators
RG_btnGenReport="//*[@id='mat-dialog-0']/byte-report-popup/div[2]/div/button[1]"
RG_btnCloseReport="//*[@id='mat-dialog-0']/byte-report-popup/div[1]/div/div/div/button"

# Home ReportsGeneration Locators by filter
RG_btnOpenCalendarIni = "//*[@id='mat-dialog-0']/byte-report-popup/mat-dialog-content/div/form/mat-form-field[1]/div/div[1]/div[2]/mat-datepicker-toggle/button"
RG_sltYearIni = "//*[@id='mat-datepicker-0']/mat-calendar-header/div/div/button[1]"
RG_optYearIni = "//*[@id='mat-datepicker-0']/div/mat-multi-year-view/table/tbody/tr[6]/td[1]/div"
RG_optMonthIni = "//*[@id='mat-datepicker-0']/div/mat-year-view/table/tbody/tr[2]/td[1]/div"
RG_optDayIni = "//*[@id='mat-datepicker-0']/div/mat-month-view/table/tbody/tr[4]/td[1]/div"

RG_btnOpenCalendarFin = "//*[@id='mat-dialog-0']/byte-report-popup/mat-dialog-content/div/form/mat-form-field[2]/div/div[1]/div[2]/mat-datepicker-toggle/button"
RG_sltYearFin = "//*[@id='mat-datepicker-1']/mat-calendar-header/div/div/button[1]"
RG_optYearFin = "//*[@id='mat-datepicker-1']/div/mat-multi-year-view/table/tbody/tr[6]/td[4]/div"
RG_optMonthFin = "//*[@id='mat-datepicker-1']/div/mat-year-view/table/tbody/tr[2]/td[2]/div"
RG_optDayFin = "//*[@id='mat-datepicker-1']/div/mat-month-view/table/tbody/tr[2]/td[1]/div"

RG_slcLineaNegocio = "//*[@id='mat-select-1']/div/div[1]/span"
RG_slcLineaNegociov2 = "//*[@id='mat-dialog-0']/byte-report-popup/mat-dialog-content/div/form/mat-form-field[3]/div/div[1]/div"
RG_optLineaNegocio = "//*[@id='mat-option-11']"

RG_sltMonthIC = "//*[@id='mat-select-1']/div/div[1]"
RG_optMonthIC = "//*[@id='mat-option-4']"
RG_optMonthIC2 = "//*[@id='mat-option-9']"

RG_sltYearIC = "//*[@id='mat-select-2']/div/div[1]"
RG_optYearIC = "//*[@id='mat-option-15']"
RG_optYearIC2 = "//*[@id='mat-option-3']"
RG_optYearIC3 = "//*[@id='mat-option-16']"

# Otros Comentarios
# TipoDocContablemodEq = "//*[@id='mat-select-4']/div/div[1]"
# //*[@id='mat-select-32']/div/div[1]/span/span
# //*[@id="mat-select-32"]/div/div[1]
# OptionTipoDocContablemodEq = "//*[@id='mat-option-15']"

# HomePageSearchTextBox = "xpath://*[@id='gh-ac']"
# HomePageSearchButton = "xpath://*[@id='gh-btn']"
# HomePageAdvancedSearchLink = "xpath://*[@id='gh-as-a']"