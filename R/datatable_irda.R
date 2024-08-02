#' Apply IRDA Theme to datatable Objects
#'
#' This function applies a custom theme suitable for IRDA visualizations. It sets various graphical
#' parameters such as text size, font, and element colors.
#'
#' @return A datatable object.
#' @export
#' @examples
#' p <- datatable_irda(iris)
#'
# Theme function definition

datatable_irda = function(x, ...){
fr <- list(
  sProcessing = "Traitement en cours...", sSearch = "Rechercher&nbsp;:",
  sLengthMenu = "Afficher _MENU_ &eacute;l&eacute;ments",
  sInfo = "Affichage de l'&eacute;l&eacute;ment _START_ &agrave; _END_ sur _TOTAL_ &eacute;l&eacute;ments",
  sInfoEmpty = "Affichage de l'&eacute;l&eacute;ment 0 &agrave; 0 sur 0 &eacute;l&eacute;ment",
  sInfoFiltered = "(filtr&eacute; de _MAX_ &eacute;l&eacute;ments au total)",
  sInfoPostFix = "", sLoadingRecords = "Chargement en cours...",
  sZeroRecords = "Aucun &eacute;l&eacute;ment &agrave; afficher",
  sEmptyTable = "Aucune donn&eacute;e disponible dans le tableau",
  oPaginate = list(
    sFirst = "Premier", sPrevious = "Pr&eacute;c&eacute;dent",
    sNext = "Suivant", sLast = "Dernier"
  ),
  oAria = list(
    sSortAscending = ": activer pour trier la colonne par ordre croissant",
    sSortDescending = ": activer pour trier la colonne par ordre d&eacute;croissant"
  )
)

DT::datatable(x,..., options = list(
  language = fr,

  initComplete = DT::JS(
    "function(settings, json) {",
    "$('body').css({'font-family': 'Calibri'});",
    paste0("$(this.api().table().header()).css({'background-color': '",colors["darkblue"],"', 'color': '#fff', 'font-family': 'Calibri', 'font-weight': 'bold'});"),
    paste0("$(this.api().table().body()).css({'color': '",colors["darkblue"],"', 'font-family': 'Calibri Light', 'font-weight': 'bold'});"),

    "}")
))}
