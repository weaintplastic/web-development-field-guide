# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.35-0ubuntu0.12.04.2-log)
# Datenbank: versioning-demo
# Erstellungsdauer: 2014-12-19 10:13:26 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle box_backup
# ------------------------------------------------------------



# Export von Tabelle box_config
# ------------------------------------------------------------

LOCK TABLES `box_config` WRITE;
/*!40000 ALTER TABLE `box_config` DISABLE KEYS */;

INSERT INTO `box_config` (`id`, `module_id`, `key`, `value`, `name`, `description`, `type`)
VALUES
	(6,4,'user-1-profile','1','','',0),
	(7,4,'key','','','',0),
	(8,4,'shopLocation','/shop','','',0),
	(9,4,'backendLocation','/shop/_admin','','',0),
	(10,4,'debugMode','0','','',0),
	(13,5,'debugMode','0','','',0),
	(14,5,'FACEBOOK_APPID','','','',0),
	(15,5,'FACEBOOK_APPSECRET','','','',0),
	(16,5,'FOURSQUARE_CLIENTID','','','',0),
	(17,5,'FOURSQUARE_CLIENTSECRET','','','',0),
	(18,5,'INSTAGRAM_CLIENTID','','','',0),
	(19,5,'TWITTER_CONSUMERKEY','','','',0),
	(20,5,'TWITTER_CONSUMERSECRET','','','',0),
	(21,5,'TWITTER_ACCESSTOKEN','','','',0),
	(22,5,'TWITTER_ACCESSTOKENSECRET','','','',0),
	(23,5,'FACEBOOK_PAGEID','','social_config_crawler_facebook_pageid','social_config_crawler_facebook_pageid_description',0),
	(24,5,'INSTAGRAM_TAG','','social_config_crawler_instagram_tag','social_config_crawler_instagram_tag_description',0),
	(25,5,'TWITTER_SEARCH','','social_config_crawler_twitter_search','social_config_crawler_twitter_search_description',0),
	(26,5,'FOURSQUARE_LOCATION','','social_config_crawler_foursquare_location','social_config_crawler_foursquare_location_description',0),
	(27,5,'FOURSQUARE_TWITTER_CHECKIN','','social_config_crawler_foursquare_twitter_search','social_config_crawler_foursquare_twitter_search_description',0),
	(28,5,'YOUTUBE_USERNAME','','social_config_crawler_youtube_username','social_config_crawler_youtube_username_description',0);

/*!40000 ALTER TABLE `box_config` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle box_dictionary
# ------------------------------------------------------------

LOCK TABLES `box_dictionary` WRITE;
/*!40000 ALTER TABLE `box_dictionary` DISABLE KEYS */;

INSERT INTO `box_dictionary` (`language`, `key`, `translation`)
VALUES
	('DE','box_all_users','Alle User'),
	('DE','box_auth_password_reset','Ihr Passwort wurde erfolgreich zurückgesetzt.'),
	('DE','box_auth_password_reset_failed','Fehler beim Zurücksetzen des Passworts.'),
	('DE','box_auth_password_reset_sent','Der Link zum Zurücksetzen des Passworts wurde an Ihre E-Mail Adresse geschickt.'),
	('DE','box_auth_subject_forgot_password','Passwort vergessen?'),
	('DE','box_auth_subject_reset_password','Ihr neues Passwort'),
	('DE','box_config_mandrill_api_key','Mandrill API-Key'),
	('DE','box_config_mandrill_api_key_description','Mandrill API-Key'),
	('DE','box_config_smtp_server_ip','SMTP Server IP-Adresse'),
	('DE','box_config_smtp_server_ip_description','Wenn ein externer SMTP-Server verwendet werden soll um E-Mails zu versenden, muss seine IP-Adresse eingetragen werden.'),
	('DE','box_downloading_file','Lade Datei …'),
	('DE','box_edit_del_site_confirm','Möchten Sie diese Website wirklich löschen? Alle Inhalte (Seiten, Dateien, Vorlagen, …) werden gelöscht.'),
	('DE','box_edit_site_headline','Website bearbeiten'),
	('DE','box_error_processing','Es ist ein Fehler beim Verarbeiten der Datei aufgetreten. Der Import ist fehlgeschlagen.'),
	('DE','box_export_site','Website exportieren'),
	('DE','box_failed_loading_site','Fehler beim Laden der Website.'),
	('DE','box_file_copied','Die Datei wurde kopiert'),
	('DE','box_file_exists','Die Datei existiert bereits'),
	('DE','box_grouping_group','Übergeordnete Gruppe? (Diese Gruppe wird auch als Tab angezeigt.)'),
	('DE','box_import_collissions','Kollisionen gefunden. Der Import war erfolgreich, aber die Kollisionen müssen manuell gelöst werden.'),
	('DE','box_import_executed_no_conflicts','Der Import wurde erfolgreich und ohne Konflikte ausgeführt.'),
	('DE','box_import_not_executed','Der Import wurde nicht ausgeführt'),
	('DE','box_import_site','Website importieren'),
	('DE','box_import_site_desc','Bitte wählen Sie eine Export-Datei. ACHTUNG: Es werden keine Dateien oder Datensätze überschrieben. Nach dem Exportieren einer Website erhalten Sie einen kompletten Bericht.'),
	('DE','box_list_sites_headline','Website Liste'),
	('DE','box_new_site','Neue Website'),
	('DE','box_processing_import','Bitte warten… Die Datei wird verarbeitet. Dieser Vorgang kann einige Minuten dauern.'),
	('DE','box_records_found','%1 Einträge gefunden.'),
	('DE','box_settings','Einstellungen'),
	('DE','box_site_associated_domains','Verbundene Domains'),
	('DE','box_site_domain','Hauptdomain'),
	('DE','box_site_host','Host (Domain Identifizierung)'),
	('DE','box_site_robots_file_content','Inhalt robots.txt'),
	('DE','box_site_settings','Website Einstellungen'),
	('DE','box_sql_executed','SQL wurde erfolgreich ausgeführt'),
	('DE','box_sql_ignored','Element existiert bereits in der Datenbank'),
	('DE','box_welcome','Servus'),
	('DE','change_domain_confirmation','Sie haben die Domain geändert. Dadurch werden möglicherweise URL\'s oder Dateipfade ungültig und müssen manuell korrigiert werden. Möchten Sie fortfahren?'),
	('DE','cms_add_shortcut','Quicklink auf Start-Screen einfügen'),
	('DE','cms_all_sites','Alle Seiten'),
	('DE','cms_approved_by','Freigegeben durch'),
	('DE','cms_approve_item','Element freigeben'),
	('DE','cms_assets','Dateien'),
	('DE','cms_assets_current_folder','Aktueller Ordner'),
	('DE','cms_assets_delete_seleted','Gewählte löschen'),
	('DE','cms_assets_details_headline','Details für Datei %1'),
	('DE','cms_asset_select','Auswählen'),
	('DE','cms_available_in','Verfügbar in'),
	('DE','cms_available_snippets','Verfügbare Schnipsel'),
	('DE','cms_cache_folder_not_writable',''),
	('DE','cms_choose_list_type','[Listentyp auswählen]'),
	('DE','cms_choose_template','[Vorlage auswählen]'),
	('DE','cms_close_versions','Versionen ausblenden'),
	('DE','cms_common_usage','Allgemeine Verwendung'),
	('DE','cms_configuration','Konfiguration'),
	('DE','cms_config_country_location','Länder Ebene'),
	('DE','cms_config_country_location_description','Länder Ebene für diese CMS Installation aktivieren oder deaktivieren. Bei Aktivierung dieses Features müssen Seitenpfade wie folgt definiert werden: LAND/SPRACHE'),
	('DE','cms_config_country_location_fallbacks','Länder Ebene Fallbacks'),
	('DE','cms_config_country_location_fallbacks_description','\"Hier können Sie definieren welche Version für User angezeigt wird, deren Land keine eigene Länder-Version hat. Beispiel: Die AT-Version (Österreich) hat einen Fallback für DE (Deutschland). Daher wird dem User diese Version angezeigt.\"'),
	('DE','cms_config_country_location_global_fallback','Länder Ebene Global Fallback'),
	('DE','cms_config_country_location_global_fallback_desc','\"Global Fallback Version. Ist keine Länder-Version für einen User verfügbar, so wird diese Version angezeigt. Beispiel: Die AT-Version (Österreich) hat einen Fallback für DE (Deutschland). Allerdings haben wir weder eine Version, noch einen Fallback für ES (Spanien). Daher wird dem User diese (globale) Version angezeigt.\"'),
	('DE','cms_config_default_language_folder','Standard Sprach-Ordner'),
	('DE','cms_config_default_language_folder_description','Wählen Sie den standard Sprach-Ordner'),
	('DE','cms_config_email_sender','Absender E-Mail Adresse'),
	('DE','cms_config_email_sender_description','Diese E-Mail Adresse wird als Absender bei allen automatisch generierten E-Mails verwendet.'),
	('DE','cms_config_email_sender_missing','Es wurde keine Sender E-Main Adresse angegeben. Sie kann unter Konfiguration im CMS oder direkt im sendmail snippet angegeben werden.'),
	('DE','cms_config_email_sender_name','E-Mail Sender Name'),
	('DE','cms_config_email_sender_name_description','Dieser Name wird als Absender-Name bei allen automatisch generierten E-Mails verwendet.'),
	('DE','cms_config_email_sender_name_missing','Es wurde kein Sender-Name angegeben. Der E-Mail Sender-Name kann unter Konfiguration im CMS oder direkt im sendmail snippet angegeben werden.'),
	('DE','cms_config_email_site_name','E-Mail Seitenname'),
	('DE','cms_config_email_site_name_description','Für die Verwendung in E-Mail Templates (bspw. '),
	('DE','cms_config_fallback_language_folder','Fallback Sprach-Ordner'),
	('DE','cms_config_fallback_language_folder_description','Besucher der Website deren Sprache nicht unterstützt wird, werden auf folgenden Sprach-Ordner weitergeleitet:'),
	('DE','cms_config_language_folder_none_found','Es wurden keine Sprach-Ordner gefunden.'),
	('DE','cms_config_list_intro','Wählen Sie eine Einstellung'),
	('DE','cms_config_mobile_folder','Mobile Ordner'),
	('DE','cms_config_mobile_folder_description','Wählen Sie den Mobile-Ordner'),
	('DE','cms_config_mobile_folder_none_found','Es wurde kein möglicher Mobile-Ordner gefunden.'),
	('DE','cms_config_type_1','Ordner und Seiten'),
	('DE','cms_config_type_2','E-Mail Setup'),
	('DE','cms_config_use_custom_404','404 Seiten'),
	('DE','cms_config_use_custom_404_description','Verwende eigene 404-Error-Seiten (Seite namens 404 in jeweiligem Ordner)'),
	('DE','cms_confirm_remove_redirect','Möchten Sie die Weiterleitung löschen?'),
	('DE','cms_confirm_send_to_approval','Bitte  speichern Sie alle Änderungen, bevor Sie die Inhalte zur Freigabe senden. '),
	('DE','cms_confirm_set_version_live','Möchten Sie diese Version als Live-Version festlegen?'),
	('DE','cms_copy','Kopie'),
	('DE','cms_country_location_global_fallback_no_pages','Es konnten keine Seiten als globaler Fallback für Länder Ebenen gefunden werden'),
	('DE','cms_created_by','Erstellt durch'),
	('DE','cms_current_version_hash','Content Hash für diese Version'),
	('DE','cms_current_version_name','Version/Titel'),
	('DE','cms_days',''),
	('DE','cms_delete_version_confirm','Möchten Sie diese Version löschen?'),
	('DE','cms_disapprove_item','Element zurückweisen'),
	('DE','cms_edit_assets_headline','Dateien verwalten'),
	('DE','cms_edit_assets_intro','Wählen Sie einen Ordner um Dateien hochzuladen oder zu löschen.'),
	('DE','cms_edit_del_list','Liste löschen'),
	('DE','cms_edit_del_list_confirm','Möchten Sie diese Liste wirklich löschen?'),
	('DE','cms_edit_del_list_item_confirm','Listeneintrag wirklich löschen?'),
	('DE','cms_edit_del_page','Seite löschen'),
	('DE','cms_edit_del_page_confirm','Möchten Sie diese Seite wirklich löschen?'),
	('DE','cms_edit_del_site','Website löschen'),
	('DE','cms_edit_del_template_confirm','Vorlage wirklich löschen?'),
	('DE','cms_edit_empty_list','Leere Liste'),
	('DE','cms_edit_empty_list_confirm','Sind Sie sicher, dass Sie die gesamte Liste leeren möchten? Dieser Vorgang kann nicht rückgängig gemacht werden!'),
	('DE','cms_edit_image_size_info','Dieses Bild wird automatisch in folgenden Abmessungen gespeichert: %1'),
	('DE','cms_edit_link_caption','Text'),
	('DE','cms_edit_link_external','Extern'),
	('DE','cms_edit_link_internal','Intern'),
	('DE','cms_edit_link_target','Fenster'),
	('DE','cms_edit_link_url','Adresse (inkl. http)'),
	('DE','cms_edit_list_headline','Liste bearbeiten'),
	('DE','cms_edit_list_settings','Einstellungen'),
	('DE','cms_edit_page_headline','Seite bearbeiten'),
	('DE','cms_edit_page_in_menu','in Menüs anzeigen'),
	('DE','cms_edit_page_in_search','für Suche indizieren'),
	('DE','cms_edit_page_in_sitemap','in Sitemap aufnehmen'),
	('DE','cms_edit_page_publishing','Veröffentlichung'),
	('DE','cms_edit_page_publish_from','veröffentlicht von'),
	('DE','cms_edit_page_publish_to','veröffentlicht bis'),
	('DE','cms_edit_page_redirect_status_permanent','dauerhaft'),
	('DE','cms_edit_page_redirect_status_temporary','temporär'),
	('DE','cms_edit_page_redirect_to_page','Weiterleitung zu Seite'),
	('DE','cms_edit_page_redirect_type_external','extern'),
	('DE','cms_edit_page_redirect_type_internal','intern'),
	('DE','cms_edit_page_settings','Einstellungen'),
	('DE','cms_edit_page_sitemap_changefreq','Sitemap XML Änderungshäufigkeit'),
	('DE','cms_edit_page_sitemap_priority','Sitemap XML Wichtigkeit'),
	('DE','cms_edit_page_strict_route','strikte Pfad-Übereinstimmung (keine Parameter erlaubt)'),
	('DE','cms_edit_page_subpages','Unterseiten'),
	('DE','cms_edit_select_file','Datei auswählen'),
	('DE','cms_edit_select_image','Bild auswählen'),
	('DE','cms_edit_select_list_item','Hinzufügen'),
	('DE','cms_edit_template_headline','Vorlage bearbeiten'),
	('DE','cms_edit_unset_date','Datum deaktivieren'),
	('DE','cms_email_settings','E-Mail Einstellungen'),
	('DE','cms_error_importing_list','Es ist ein Fehler beim Import aufgetreten:'),
	('DE','cms_export_list','Liste exportieren'),
	('DE','cms_failed_loading_page','Die Seite konnte nicht geladen werden.'),
	('DE','cms_folder_name','Ordnername'),
	('DE','cms_gallery_copyright','Copyright'),
	('DE','cms_gallery_date','Datum'),
	('DE','cms_gallery_delete_item_confirm','Sicher dass Sie dieses Bild entfernen möchten?'),
	('DE','cms_gallery_description','Beschreibung'),
	('DE','cms_gallery_disable','Deaktivieren'),
	('DE','cms_gallery_enable','Aktivieren'),
	('DE','cms_gallery_title','Titel'),
	('DE','cms_import_delimiter','Begrenzungszeichen (\",\'...)'),
	('DE','cms_import_publish_by_default','Elemente veröffentlichen?'),
	('DE','cms_import_reverse_order','Reihenfolge umdrehen? Die erste Zeile aus dem CSV als letzter Datensatz in der Liste.'),
	('DE','cms_import_separator','Spaltentrenner'),
	('DE','cms_infinite_inserts','Vorlage <b>%1</b> verwendet Vorlage <b>%2</b> welche wiederum Vorlage <b>%1</b> verwendet - so geht das nicht :P'),
	('DE','cms_intro','Bitte wählen Sie eine Seite um zu Starten.'),
	('DE','cms_items_no_versions_found','Keine Versionen vorhanden'),
	('DE','cms_items_were_added','Elemente hinzugefügt.'),
	('DE','cms_item_sent_for_approval','Element wurde zur Freigabe versandt'),
	('DE','cms_item_subject_item_sent_approval','Neues Element wurde zur Freigabe versandt'),
	('DE','cms_item_version','Version'),
	('DE','cms_item_was_approved','Ihr Element wurde freigegeben'),
	('DE','cms_item_was_rejected','Ihr Element wurde abgelehnt'),
	('DE','cms_last_updated_by','Letzte Aktualisierung'),
	('DE','cms_lists','Listen'),
	('DE','cms_lists_next_page','Nächste Seite'),
	('DE','cms_lists_prev_page','Vorige Seite'),
	('DE','cms_lists_show_all','Alle anzeigen'),
	('DE','cms_list_delete_item','Eintrag löschen'),
	('DE','cms_list_frontend_writable','Frontend beschreibbar'),
	('DE','cms_list_imported','Die Datei wurde erfolgreich importiert'),
	('DE','cms_list_item_unnamed','Unbenannt'),
	('DE','cms_list_move_item','Eintrag verschieben'),
	('DE','cms_list_name','Name'),
	('DE','cms_list_search_caption','Suchen'),
	('DE','cms_list_search_clear_caption','Abbrechen'),
	('DE','cms_list_type','Typ'),
	('DE','cms_list_type_list','Listen mit Vorlage'),
	('DE','cms_list_type_menu','Menü'),
	('DE','cms_list_type_not_assigned','Nicht zugeordnet (kein Typ)'),
	('DE','cms_loading_assets','Lade Dateien ...'),
	('DE','cms_loading_configuration','Lade Einstellungen ...'),
	('DE','cms_loading_lists','Lade Listen ...'),
	('DE','cms_loading_pages','Lade Seiten ...'),
	('DE','cms_loading_permissions','Lade Rechte ...'),
	('DE','cms_loading_templates','Lade Vorlagen ...'),
	('DE','cms_load_other_page_version','Andere Version laden'),
	('DE','cms_menu_page_selection_invalid','Fehlerhafte Auswahl'),
	('DE','cms_menu_select_page','Hier klicken zum Auswählen einer Seite'),
	('DE','cms_new_assets_folder','Neuer Ordner'),
	('DE','cms_new_list','Neue Liste'),
	('DE','cms_new_list_item','Neuer Eintrag'),
	('DE','cms_new_page','Neue Seite'),
	('DE','cms_new_template','Neue Vorlage'),
	('DE','cms_no_assets_found','Keine Dateien gefunden'),
	('DE','cms_no_container','kein Container'),
	('DE','cms_no_permissions','Sie haben keine Rechte um dieses Element zu bearbeiten'),
	('DE','cms_or_click_here_to_select_file','Oder klicken Sie hier um eine existierende Datei zu wählen'),
	('DE','cms_page','Seite'),
	('DE','cms_pages','Seiten'),
	('DE','cms_page_be_published','Diese Seite wird automatisch veröffentlicht am %1'),
	('DE','cms_page_caching_options',''),
	('DE','cms_page_container','Container'),
	('DE','cms_page_container_empty','keiner'),
	('DE','cms_page_content','Inhalt'),
	('DE','cms_page_load_new_version','Möchten Sie diese Version laden? Achtung, ungespeicherte Änderungen gehen verloren. Bitte speichern zu zuerst alle Änderungen in der aktuellen Version.'),
	('DE','cms_page_name','Name'),
	('DE','cms_page_parent_is_self','Der Container einer Seite kann nicht die Seite selber sein. Die Änderung wurde nicht übernommen.'),
	('DE','cms_page_preview_info','Diese Einstellungen werden auch gespeichert wenn die Seiten-Vorschau verwendet wird.'),
	('DE','cms_page_route','Pfad'),
	('DE','cms_page_template','Vorlage'),
	('DE','cms_page_template_really_change','Vorlage wirklich ändern? Eingabefelder werden dabei neu geladen.'),
	('DE','cms_preview_item','Vorschau anzeigen'),
	('DE','cms_preview_system','VORSCHAU'),
	('DE','cms_problems_found','Probleme wurden erkannt'),
	('DE','cms_quicklinks_empty','Keine Quicklinks vorhanden'),
	('DE','cms_quicklinks_title','Quicklinks'),
	('DE','cms_redirections','Weiterleitungen'),
	('DE','cms_redirect_from','Weiterleitung von:'),
	('DE','cms_redirect_to','zu Seite:'),
	('DE','cms_regional_settings','Sprachen & Länder'),
	('DE','cms_reject_item','Element ablehnen'),
	('DE','cms_save_as_version','Version Speichern'),
	('DE','cms_select_asset','Datei auswählen'),
	('DE','cms_select_page_dialog_intro','Wählen Sie eine Seite oder einen Ordner'),
	('DE','cms_send_item_approval','Zur Freigabe senden'),
	('DE','cms_sent_for_approval','Das Element wurde zur Freigabe gesandt'),
	('DE','cms_seo_settings','SEO Einstellungen'),
	('DE','cms_settings','EINSTELLUNGEN'),
	('DE','cms_settings_saved_draft','\"Diese Einstellungen gelten für die Live-Version der Seite und werden immer sofort veröffentlicht. Bitte beachten Sie, dass die Vorlage eines Entwurfs kann nicht geändert werden.\"'),
	('DE','cms_set_current_version','Als Live-Version'),
	('DE','cms_shared_lists','Gegebene Listen'),
	('DE','cms_shared_templates','Gegebene Vorlagen'),
	('DE','cms_show_all_items','Veröffentlichte und nicht-veröffentlichte Elemente'),
	('DE','cms_show_approved_items','Freigegebene Elemente anzeigen'),
	('DE','cms_show_items_to_approve','Nicht freigegebene Elemente anzeigen'),
	('DE','cms_show_published_items','Nur veröffentlichte Elemente'),
	('DE','cms_show_unpublished_items','Nur nicht-veröffentliche Elemente'),
	('DE','cms_snippet_config_invalid','[Vorlage] Schnipselkonfiguration ungültig: <b>%1</b>, korrekte Verwendung: <b>%2</b>'),
	('DE','cms_snippet_not_found','[Vorlage] Schnipsel nicht gefunden: <b>%1</b>'),
	('DE','cms_snip_textnumber_maxval','max. Wert %1'),
	('DE','cms_snip_textnumber_minval','min. Wert %1'),
	('DE','cms_snip_text_maxchars','limitiert auf %1 Zeichen'),
	('DE','cms_supported_import_snippets','Snippets deren Werte importiert werden können'),
	('DE','cms_template','Vorlage'),
	('DE','cms_templates','Vorlagen'),
	('DE','cms_template_code','Code'),
	('DE','cms_template_error','Die Vorlage existiert nicht.'),
	('DE','cms_template_missing','Insert Vorlage nicht gefunden: <b>%1</b>'),
	('DE','cms_template_name','Name'),
	('DE','cms_template_selectable','auswählbar'),
	('DE','cms_template_selectable_admins_only','Vorlage nur für Administratoren zur Auswahl'),
	('DE','cms_template_selectable_all_users','Vorlage für alle User zur Auswahl'),
	('DE','cms_template_selectable_on_pages','Als Seitenvorlage wählbar'),
	('DE','cms_template_type','Typ'),
	('DE','cms_template_type_1','Zentrales Template für Seiten'),
	('DE','cms_template_type_2','Templates zum Einfügen'),
	('DE','cms_template_type_3','Layout- und Schema-Vorlage für Listen'),
	('DE','cms_template_usage','Verwendet von'),
	('DE','cms_upload_add_files','Dateien hinzufügen...'),
	('DE','cms_upload_cancel_upload','Upload abbrechen'),
	('DE','cms_upload_start_upload','Upload starten'),
	('DE','cms_versions_history','Versionen & Log'),
	('DE','cms_viewing_version','Vorschau-Version'),
	('DE','cms_view_versions','Versionen dieses Elements anzeigen'),
	('DE','cms_welcome','Willkommen im LOOP CMS!'),
	('DE','cms_with_status','Status:'),
	('DE','general_Actions',''),
	('DE','general_activated','aktiviert'),
	('DE','general_active','aktiv'),
	('DE','general_Add','Hinzufügen'),
	('DE','general_always','ständig'),
	('DE','general_approved','freigeschalten'),
	('DE','general_april','April'),
	('DE','general_april_short','Apr'),
	('DE','general_august','August'),
	('DE','general_august_short','Aug'),
	('DE','general_automatically','automatisch'),
	('DE','general_Cancel','Abbrechen'),
	('DE','general_change','ändern'),
	('DE','general_choose','wählen'),
	('DE','general_Close','Schließen'),
	('DE','general_continue','Weiter'),
	('DE','general_Country','Land'),
	('DE','general_create','Erstellen'),
	('DE','general_Creation','Erstellung'),
	('DE','general_daily','täglich'),
	('DE','general_datatable_sFirst','Erster'),
	('DE','general_datatable_sInfo','Zeige _START_ bis _END_ von _TOTAL_ Einträgen'),
	('DE','general_datatable_sInfoEmpty','Keine Einträge'),
	('DE','general_datatable_sInfoFiltered','(gefiltert aus _MAX_ Einträgen gesamt)'),
	('DE','general_datatable_sLast','Letzter'),
	('DE','general_datatable_sLengthMenu','Zeige _MENU_ Einträge pro Seite'),
	('DE','general_datatable_sNext','Nächste'),
	('DE','general_datatable_sPrevious','Zurück'),
	('DE','general_datatable_sProcessing','Bitte warten...'),
	('DE','general_datatable_sSearch','Suchen'),
	('DE','general_datatable_sZeroRecords','Keine Einträge gefunden'),
	('DE','general_date_format','d.m.Y'),
	('DE','general_date_format_jquery','dd.mm.yy'),
	('DE','general_date_time_format','d.m.Y, H:i'),
	('DE','general_Day','Tag'),
	('DE','general_december','Dezember'),
	('DE','general_december_short','Dez'),
	('DE','general_Default','Standard'),
	('DE','general_Delete','Löschen'),
	('DE','general_delete_record','Möchten Sie diesen Datensatz wirklich löschen?'),
	('DE','general_Description','Beschreibung'),
	('DE','general_Details','Details'),
	('DE','general_done','Fertig'),
	('DE','general_Edit','Bearbeiten'),
	('DE','general_Email','E-Mail'),
	('DE','general_facebook_id','Facebook ID'),
	('DE','general_february','Februar'),
	('DE','general_february_short','Feb'),
	('DE','general_filter','Filter'),
	('DE','general_Firstname','Vorname'),
	('DE','general_friday','Freitag'),
	('DE','general_friday_min','Fr'),
	('DE','general_friday_short','Fre'),
	('DE','general_Gender','Geschlecht'),
	('DE','general_gender_F','weiblich'),
	('DE','general_gender_M','männlich'),
	('DE','general_Groups','Gruppen'),
	('DE','general_help','Hilfe'),
	('DE','general_hour','Stunde'),
	('DE','general_hourly','stündlich'),
	('DE','general_january','Januar'),
	('DE','general_january_short','Jan'),
	('DE','general_july','Juli'),
	('DE','general_july_short','Jul'),
	('DE','general_june','Juni'),
	('DE','general_june_short','Jun'),
	('DE','general_Language','Sprache'),
	('DE','general_Lastname','Nachname'),
	('DE','general_Limit_to_ip','Beschränkung nach IP'),
	('DE','general_Loading','Laden...'),
	('DE','general_Login_details','Login Details'),
	('DE','general_march','März'),
	('DE','general_march_short','Mär'),
	('DE','general_may','Mai'),
	('DE','general_may_short','Mai'),
	('DE','general_minute','Minute'),
	('DE','general_Modified','Änderung'),
	('DE','general_Module','Modul'),
	('DE','general_monday','Montag'),
	('DE','general_monday_min','Mo'),
	('DE','general_monday_short','Mon'),
	('DE','general_Month','Monat'),
	('DE','general_monthly','monatlich'),
	('DE','general_Name','Name'),
	('DE','general_never','niemals'),
	('DE','general_Newsletter','Newsletter'),
	('DE','general_next','Weiter'),
	('DE','general_No','Nein'),
	('DE','general_november','November'),
	('DE','general_november_short','Nov'),
	('DE','general_now','Jetzt'),
	('DE','general_no_selection','keine Auswahl'),
	('DE','general_Object','Objekt'),
	('DE','general_october','Oktober'),
	('DE','general_october_short','Okt'),
	('DE','general_OK','OK'),
	('DE','general_on','am'),
	('DE','general_Password','Passwort'),
	('DE','general_Password_confirm','Passwort Wiederholung'),
	('DE','general_Permission','Recht'),
	('DE','general_Permissions','Rechte'),
	('DE','general_Personal_details','Persönliche Details'),
	('DE','general_Photo','Profilbild'),
	('DE','general_prev','Zurück'),
	('DE','general_preview','Vorschau'),
	('DE','general_Profile','Profil'),
	('DE','general_RememberLogin','Login merken'),
	('DE','general_Salutation','Anrede'),
	('DE','general_saturday','Samstag'),
	('DE','general_saturday_min','Sa'),
	('DE','general_saturday_short','Sam'),
	('DE','general_save','Speichern'),
	('DE','general_save_publish','Speichern & Veröffentlichen'),
	('DE','general_save_version_settings','Versionseinstellungen speichern'),
	('DE','general_search','Suchen'),
	('DE','general_second','Sekunde'),
	('DE','general_Select','Auswählen'),
	('DE','general_send','Senden'),
	('DE','general_seperated_by_semicolon','mit Stichpunkt getrennt'),
	('DE','general_september','September'),
	('DE','general_september_short','Sep'),
	('DE','general_show','Anzeigen'),
	('DE','general_size','Größe'),
	('DE','general_Social_media_details','Social Media Details'),
	('DE','general_Subject','Betreff'),
	('DE','general_sunday','Sonntag'),
	('DE','general_sunday_min','So'),
	('DE','general_sunday_short','Son'),
	('DE','general_Template','Vorlage'),
	('DE','general_thursday','Donnerstag'),
	('DE','general_thursday_min','Do'),
	('DE','general_thursday_short','Don'),
	('DE','general_time','Zeit'),
	('DE','general_to','zu'),
	('DE','general_today','Heute'),
	('DE','general_translation','Übersetzung'),
	('DE','general_tuesday','Dienstag'),
	('DE','general_tuesday_min','Di'),
	('DE','general_tuesday_short','Die'),
	('DE','general_twitter_id','Twitter ID'),
	('DE','general_Type','Typ'),
	('DE','general_unknown','unbekannt'),
	('DE','general_unnamed','Unbenannt'),
	('DE','general_URL','URL'),
	('DE','general_Username','Username'),
	('DE','general_wednesday','Mittwoch'),
	('DE','general_wednesday_min','Mi'),
	('DE','general_wednesday_short','Mit'),
	('DE','general_weekly','wöchentlich'),
	('DE','general_Year','Jahr'),
	('DE','general_yearly','jährlich'),
	('DE','general_Yes','Ja'),
	('DE','nls_all_contacts','Alle Kontakte'),
	('DE','nls_aws_access_key','AWS Access Key'),
	('DE','nls_aws_host','AWS Host (ohne \'https://\')'),
	('DE','nls_aws_secret_key','AWS Secret Key'),
	('DE','nls_campaign_done_recipients','abgearbeitet'),
	('DE','nls_campaign_failed_recipients','Fehler'),
	('DE','nls_campaign_finish','Ende'),
	('DE','nls_campaign_log','Log'),
	('DE','nls_campaign_num_recipients','Empfänger'),
	('DE','nls_campaign_progressing','Neuer Versand'),
	('DE','nls_campaign_start','Start'),
	('DE','nls_campaign_started','Versand gestartet!'),
	('DE','nls_campaign_stats','Statistiken'),
	('DE','nls_campaign_status','Status'),
	('DE','nls_campaign_success_recipients','Erfolg'),
	('DE','nls_configuration','Einstellungen'),
	('DE','nls_config_site','AWS Configuration for site'),
	('DE','nls_contacts','Empfänger'),
	('DE','nls_contacts_import','Import'),
	('DE','nls_contacts_selected','Empfänger ausgewählt'),
	('DE','nls_csv_assign_fields','Felder zuweisen'),
	('DE','nls_csv_import','CSV Import'),
	('DE','nls_csv_import_select_file','Datei auswählen'),
	('DE','nls_csv_upload_start_note','Hinweis: Der Upload startet sobald eine Datei ausgewählt wurde.'),
	('DE','nls_dashboard_statistics','Statistik'),
	('DE','nls_delivery_done','Der Versand wurde abgeschlossen.'),
	('DE','nls_edit_contacts_list_error','Die Liste wurde nicht gefunden.'),
	('DE','nls_edit_del_recipient_group_confirm','Empfängergruppe wirklich löschen?'),
	('DE','nls_edit_del_template_confirm','Vorlage wirklich löschen?'),
	('DE','nls_edit_newsletter_headline','Newsletter Bearbeiten'),
	('DE','nls_edit_recipients_list_headline','Empfänger-Liste Bearbeiten'),
	('DE','nls_edit_recipient_error','Der Empfänger wurde nicht gefunden.'),
	('DE','nls_edit_template_headline','Vorlage Bearbeiten'),
	('DE','nls_email','E-Mail'),
	('DE','nls_email_error_existing','E-Mail existiert bereits.'),
	('DE','nls_email_error_existing_revive','E-Mail existiert bereits und kann reaktiviert werden.'),
	('DE','nls_empty_item','Element leeren'),
	('DE','nls_firstname','Vorname'),
	('DE','nls_for_site','Für Site'),
	('DE','nls_gender','Geschlecht'),
	('DE','nls_gender_female','weiblich'),
	('DE','nls_gender_male','männlich'),
	('DE','nls_gender_unknown','unbekannt'),
	('DE','nls_lastname','Nachname'),
	('DE','nls_list_newsletter_headline','Newsletter verwalten'),
	('DE','nls_newsletter','Newsletter'),
	('DE','nls_newsletter_config_invalid','Der Newsletter ist nicht bereit für den Versand.'),
	('DE','nls_newsletter_creation','Erstellung'),
	('DE','nls_newsletter_delete','löschen'),
	('DE','nls_newsletter_delete_confirm','Möchten Sie den Newsletter wirklich löschen?'),
	('DE','nls_newsletter_edit','bearbeiten'),
	('DE','nls_newsletter_name','Name'),
	('DE','nls_new_contacts_list','Neue Empfängerliste'),
	('DE','nls_new_newsletter','Neuer Newsletter'),
	('DE','nls_new_template','Neue Vorlage'),
	('DE','nls_nl_name','Newsletter Name'),
	('DE','nls_nl_sender_email','Absender E-Mail-Adresse'),
	('DE','nls_nl_sender_name','Absender Name'),
	('DE','nls_nl_service','E-Mail Dienst'),
	('DE','nls_nl_subject','E-Mail Betreff'),
	('DE','nls_no_newsletter_for_template','Keine Newsletter vorhanden.'),
	('DE','nls_recent_nl_empty','Es wurden noch keine Newsletter verschickt.'),
	('DE','nls_recent_nl_title','Zuletzt gesendete Newsletter'),
	('DE','nls_recipients','Empfänger'),
	('DE','nls_recipients_existing','%1 Empfänger vorhanden.'),
	('DE','nls_recipients_show','%1 Empfänger angezeigt.'),
	('DE','nls_recipient_add','Empfänger hinzufügen'),
	('DE','nls_recipient_delete','löschen'),
	('DE','nls_recipient_delete_confirm','Empfänger aus dem System löschen?'),
	('DE','nls_recipient_edit_headline','Empfänger bearbeiten'),
	('DE','nls_recipient_existing','%1 Empfänger vorhanden.'),
	('DE','nls_recipient_groups','Empfänger Gruppen'),
	('DE','nls_recipient_group_name','Name'),
	('DE','nls_recipient_remove_from_group','von Gruppe entfernen'),
	('DE','nls_recipient_remove_from_group_confirm','Diesen Empfänger von Gruppe entfernen?'),
	('DE','nls_recipient_show','%1 Empfänger angezeigt.'),
	('DE','nls_salutation','Anrede'),
	('DE','nls_show_newsletter_error','Der Newsletter wurde nicht gefunden.'),
	('DE','nls_snippet_config_invalid','[Vorlage] Snippetkonfiguration ungültig: <b>%1</b>, Verwendung: <b>%2</b>'),
	('DE','nls_snippet_not_found','[Vorlage] Schnipsel nicht gefunden: <b>%1</b>'),
	('DE','nls_start_campaign','VERSAND STARTEN'),
	('DE','nls_start_sending_confirm','Sind Sie sicher dass Sie den Versand von %1 E-Mails starten möchten?'),
	('DE','nls_start_test_delivery','TEST-VERSAND'),
	('DE','nls_tab_contacts','Empfänger'),
	('DE','nls_tab_content','Inhalt'),
	('DE','nls_tab_settings','Einstellungen'),
	('DE','nls_tab_transmission','Versand'),
	('DE','nls_templates','Vorlagen'),
	('DE','nls_template_body_end_tag_missing','[Vorlage] Body End-Tag nicht gefunden'),
	('DE','nls_template_body_start_tag_missing','[Vorlage] Body Start-Tag nicht gefunden'),
	('DE','nls_template_code','Code'),
	('DE','nls_template_head_end_tag_missing','[Vorlage] Head End-Tag nicht gefunden'),
	('DE','nls_template_images_note','Wenn du mit dem assetsurl snippet arbeitest, müssen alle Bilder im ordner %1 abgelegt werden.'),
	('DE','nls_template_name','Name der Vorlage'),
	('DE','nls_template_snippet_liststart_missing','[Vorlage] Listen Ende wurde gefunden aber davor keine Liste gestartet'),
	('DE','nls_test_delivery','Testversand'),
	('DE','nls_test_delivery_done','Test-Versand abgeschlossen.'),
	('DE','nls_test_delivery_email_missing','Bitte tragen Sie eine gültige E-Mail-Adresse ein.'),
	('DE','nls_transmissions','Bisherige Aussendungen'),
	('DE','nls_update_template_failed','Das Newsletter-Template konnnte nicht aktualisiert werden.'),
	('DE','nls_upload_csv','CSV importieren'),
	('DE','nls_welcome','Willkommen im LOOP Newsletter System!'),
	('DE','social_configuration','Konfiguration'),
	('DE','social_config_crawler_facebook_pageid','Facebook Page ID'),
	('DE','social_config_crawler_facebook_pageid_description','Alle Posts von dieser Seite laden'),
	('DE','social_config_crawler_foursquare_location','Foursquare Location'),
	('DE','social_config_crawler_foursquare_location_descript',''),
	('DE','social_config_crawler_foursquare_twitter_search','Foursquare CheckIn (Twitter)'),
	('DE','social_config_crawler_foursquare_twitter_search_de',''),
	('DE','social_config_crawler_instagram_tag','Instagram Tag Suche'),
	('DE','social_config_crawler_instagram_tag_description','Keywords nach denen gesucht werden soll'),
	('DE','social_config_crawler_twitter_search','Twitter Suche'),
	('DE','social_config_crawler_twitter_search_description','Keywords für die Suche'),
	('DE','social_config_crawler_youtube_username','YouTube Username'),
	('DE','social_config_crawler_youtube_username_description','Username des Konto von dem die Videos importiert werden sollen'),
	('DE','social_feeds','Feeds'),
	('DE','social_welcome','Willkommen'),
	('DE','ugm_add_email','E-Mail Vorlage hinzufügen'),
	('DE','ugm_add_group','Gruppe hinzufügen'),
	('DE','ugm_add_new_email','Neue E-Mail Vorlage hinzufügen'),
	('DE','ugm_add_new_group','Neue Gruppe hinzufügen'),
	('DE','ugm_add_new_permission','Neues Recht hinzufügen'),
	('DE','ugm_add_new_user','Neuen Benutzer hinzufügen'),
	('DE','ugm_add_user','Benutzer hinzufügen'),
	('DE','ugm_description_account_activated','Das Benutzerkonto wurde aktiviert.'),
	('DE','ugm_description_account_activate_welcome','Das Benutzerkonto wurde erstellt und muss per Link aktiviert werden.'),
	('DE','ugm_description_email_activate','Die E-Mail Adresse muss per Link aktiviert werden.'),
	('DE','ugm_description_password_changed','Das Passwort wurde geändert.'),
	('DE','ugm_description_password_forgot','Das Passwort kann mittels Link geändert werden.'),
	('DE','ugm_edit_email','E-Mail Vorlage Bearbeiten'),
	('DE','ugm_edit_group','Gruppe bearbeiten'),
	('DE','ugm_edit_user','Benutzer bearbeiten'),
	('DE','ugm_email_administration','E-Mail Vorlagen Verwaltung'),
	('DE','ugm_error_birthdate_invalid','Ungültiges Geburtsdatum.'),
	('DE','ugm_error_email_existing','E-Mail Adresse ist bereits vorhanden.'),
	('DE','ugm_error_email_not_valid','Ungültige E-Mail Adresse.'),
	('DE','ugm_error_general','Es ist ein Fehler aufgetreten.'),
	('DE','ugm_error_invalid_captcha','Ungültiger Sicherheitscode.'),
	('DE','ugm_error_invalid_username_password','Ungültige Zugangsdaten.'),
	('DE','ugm_error_mandatory_fields','Pflichtfelder ausfüllen.'),
	('DE','ugm_error_max_length','Maximale Länge des Feldes ist %1.'),
	('DE','ugm_error_min_length','Minimale Länge des Feldes ist %1.'),
	('DE','ugm_error_min_max_length','Minimale Länge des Feldes ist %1. Maximale Länge des Feldes ist %2.'),
	('DE','ugm_error_not_found','Datensatz nicht gefunden.'),
	('DE','ugm_error_not_logged_in','Nicht eingeloggt oder Sitzung beendet.'),
	('DE','ugm_error_password_confirm_match','Die Passwörter stimmen nicht überein.'),
	('DE','ugm_error_template_existing','Es existiert bereits eine E-Mail Vorlage für diesen Typ, Land und Sprache.'),
	('DE','ugm_error_username_existing','Username ist bereits vergeben.'),
	('DE','ugm_group_administration','Gruppen Verwaltung'),
	('DE','ugm_group_error_existing','Diese Gruppe existiert bereits.'),
	('DE','ugm_mandatory_field','Pflichtfeld'),
	('DE','ugm_master_welcome','Willkommen in der Benutzer & Gruppen Verwaltung!'),
	('DE','ugm_menu_companies','Firmen'),
	('DE','ugm_menu_emails','E-Mail Vorlagen'),
	('DE','ugm_menu_groups','Gruppen'),
	('DE','ugm_menu_permissions','Rechte'),
	('DE','ugm_menu_users','Benutzer'),
	('DE','ugm_permission_administration','Rechte-Verwaltung'),
	('DE','ugm_permission_error_existing','Recht existiert bereits.'),
	('DE','ugm_register_default_group','Standard-Gruppe bei Registrierung'),
	('DE','ugm_user_administration','Benutzer-Verwaltung'),
	('EN',' cms_delete_all_versions','Remove all drafts & versions'),
	('EN','box_all_users','All users'),
	('EN','box_auth_password_reset','Your password has been reset successfully.'),
	('EN','box_auth_password_reset_failed','Password reset failed.'),
	('EN','box_auth_password_reset_sent','The password reset link was sent to your email address.'),
	('EN','box_auth_subject_forgot_password','Forgot your password?'),
	('EN','box_auth_subject_reset_password','Your new password'),
	('EN','box_config_mandrill_api_key','Mandrill API key'),
	('EN','box_config_mandrill_api_key_description','Mandrill API key'),
	('EN','box_config_smtp_server_ip','SMTP server IP address'),
	('EN','box_config_smtp_server_ip_description','Enter the IP address if an external SMTP server should be used for sending E-Mails.'),
	('EN','box_downloading_file','Downloading file...'),
	('EN','box_edit_del_group_confirm','Are you sure that you want to delete this group?'),
	('EN','box_edit_del_site_confirm','Are you sure you want to delete this site? It will remove ALL content (pages, assets, templates...)'),
	('EN','box_edit_del_user_confirm','Are you sure that you want to delete this admin user?'),
	('EN','box_edit_site_headline','Edit website'),
	('EN','box_error_processing','An error ocurred while processing file. Import was not successful.'),
	('EN','box_export_site','Export site'),
	('EN','box_failed_loading_site','Failed loading site.'),
	('EN','box_file_copied','File was copied'),
	('EN','box_file_exists','File already exists on the file system'),
	('EN','box_grouping_group','Is this a grouping group? (To group users in tabs)'),
	('EN','box_import_collissions','collisions were found. Import was done successfully, but check these collisions to solve them manually.'),
	('EN','box_import_executed_no_conflicts','Import was successfully executed with no conflicts.'),
	('EN','box_import_not_executed','Import was not executed'),
	('EN','box_import_site','Import site'),
	('EN','box_import_site_desc','	Select the export file you want to add. NOTE: No files or records will be overwritten. After exporting a site, you will see a complete report about the process.'),
	('EN','box_list_sites_headline','List websites'),
	('EN','box_new_site','New Website'),
	('EN','box_processing_import','File is being processed, please wait... This might take several minutes.'),
	('EN','box_records_found','%1 records found.'),
	('EN','box_settings','Settings'),
	('EN','box_site_associated_domains','Associated domains'),
	('EN','box_site_domain','Main domain'),
	('EN','box_site_host','Host (To identify domain)'),
	('EN','box_site_robots_file_content','Content of robots.txt'),
	('EN','box_site_settings','Site settings'),
	('EN','box_sql_executed','SQL was executed successfully'),
	('EN','box_sql_ignored','Item already exists on the DB'),
	('EN','box_welcome','Welcome'),
	('EN','change_domain_confirmation','You changed the domain. This may result in wrong asset or file paths. You will have to change this manually, are you sure you want to continue?'),
	('EN','cms_activate_cache','Activate cache'),
	('EN','cms_add_shortcut','Add quicklink to dashboard'),
	('EN','cms_all_sites','All sites'),
	('EN','cms_approved_by','Approved by'),
	('EN','cms_approve_item','Approve item'),
	('EN','cms_assets','Assets'),
	('EN','cms_assets_current_folder','Current folder'),
	('EN','cms_assets_delete_seleted','Delete selected'),
	('EN','cms_assets_details_headline','Details for asset %1'),
	('EN','cms_asset_select','Select'),
	('EN','cms_available_in','Available in'),
	('EN','cms_available_snippets','Snippets available'),
	('EN','cms_cached','Cached on'),
	('EN','cms_cache_all_subpages','Apply rule on subpages'),
	('EN','cms_cache_folder_not_writable','Cache cannot be enabled because the caching folder is not writable. Please change permissions on \'%1\' to be 777.'),
	('EN','cms_cache_page','Page to be cached'),
	('EN','cms_caching','Caching'),
	('EN','cms_choose_list_type','[choose list type]'),
	('EN','cms_choose_template','[choose template]'),
	('EN','cms_clear_all_cache','Clear all cached pages'),
	('EN','cms_clear_cache_url','Clear cache for this page'),
	('EN','cms_close_versions','Close versions'),
	('EN','cms_common_usage','Common usage'),
	('EN','cms_configuration','Configuration'),
	('EN','cms_config_country_location','Country location'),
	('EN','cms_config_country_location_description','Activate or deactivate the country location for this installation of the CMS. Please take into account that if you activate this feature, you have to configure the pages as follow: COUNTRY/LANGUAGE.'),
	('EN','cms_config_country_location_fallbacks','Country location fallbacks'),
	('EN','cms_config_country_location_fallbacks_description','Using this section you can define which version will be the users redirect to when they are visiting the page from one country that is not defined in the pages. For example: We have no German version for the site, but we have Austrian version. So we want to redirect all German users to the Austrian version.'),
	('EN','cms_config_country_location_global_fallback','Country location global fallback'),
	('EN','cms_config_country_location_global_fallback_desc','When there is no version defined for the country where the user is visiting us from, neither fallback for that country, the user will be redirected to this global version. For example, we have version for Austria, with a fallback for Germany, but we don\'t have version for Spain, either a fallback for this country, so the visitor from Spain will be redirected to this page.'),
	('EN','cms_config_default_language_folder','Default language folder'),
	('EN','cms_config_default_language_folder_description','Select the default language folder'),
	('EN','cms_config_email_sender','Sender E-Mail address'),
	('EN','cms_config_email_sender_description','This E-Mail address will be used as sender address for all automatically generated E-Mails.'),
	('EN','cms_config_email_sender_missing','There is no E-Mail address specified. It can be entered in the general config section of the CMS or directly at the sendmail snippet in the template.'),
	('EN','cms_config_email_sender_name','E-Mail sender name'),
	('EN','cms_config_email_sender_name_description','This E-Mail sender name will be used as sender address for all automatically generated E-Mails.'),
	('EN','cms_config_email_sender_name_missing','There is no E-Mail sender name specified. It can be entered in the general config section of the CMS or directly at the sendmail snippet in the template.'),
	('EN','cms_config_email_site_name','E-Mail site name'),
	('EN','cms_config_email_site_name_description','Used within email templates.'),
	('EN','cms_config_fallback_language_folder','Fallback language folder'),
	('EN','cms_config_fallback_language_folder_description','Visitors of the website whose language is not supported will get redirected to the following language folder:'),
	('EN','cms_config_language_folder_none_found','No language folders were found.'),
	('EN','cms_config_list_intro','Choose a configuration'),
	('EN','cms_config_mobile_folder','Mobile folder'),
	('EN','cms_config_mobile_folder_description','Select the mobile folder'),
	('EN','cms_config_mobile_folder_none_found','No possible mobile folder was found.'),
	('EN','cms_config_type_1','Folders and Pages'),
	('EN','cms_config_type_2','E-Mail setup'),
	('EN','cms_config_use_custom_404','404 pages'),
	('EN','cms_config_use_custom_404_description','Use custom 404 error pages (page named 404 in particular folder)'),
	('EN','cms_confirm_clear_all_cache','Are you sure that you want to clear ALL the cached pages?'),
	('EN','cms_confirm_clear_cache','Are you sure that you want to clear the cache for this URL?'),
	('EN','cms_confirm_delete_version','Are you sure that you want to remove that data? This action can not be reverted and data will be erased forever.'),
	('EN','cms_confirm_remove_asset_folder','Are you sure you want to remove this folder? This will permanently remove this folder and all sub folders and files.'),
	('EN','cms_confirm_remove_redirect','Are you sure you want to delete this redirection?'),
	('EN','cms_confirm_remove_rule','Are you sure that you want to remove this rule for caching?'),
	('EN','cms_confirm_send_to_approval','Remember you have to save the item before you send it to approval. If you didn\'t save it, click on cancel and save it before you send it to approval.'),
	('EN','cms_confirm_set_version_live','Are you sure you want to set this version as live? All unsaved changes on the backend will be lost.'),
	('EN','cms_copy','Copy'),
	('EN','cms_country_location_global_fallback_no_pages','No pages found to work as global fallback for countries'),
	('EN','cms_created_by','Created by'),
	('EN','cms_current_version_hash','Content hash for this current version'),
	('EN','cms_current_version_name','Version name'),
	('EN','cms_days','days'),
	('EN','cms_deactivate_cache','Deactivate cache'),
	('EN','cms_default_folder_explanation','Used when we have no information about languages (language could not be detected).'),
	('EN','cms_delete_all_versions','Remove all drafts & old versions'),
	('EN','cms_delete_asset_folder','Remove folder'),
	('EN','cms_delete_version_confirm','Are you sure you want to delete this version?'),
	('EN','cms_disapprove_item','Disapprove item'),
	('EN','cms_edit_assets_headline','Manage assets'),
	('EN','cms_edit_assets_intro','Select a folder to upload or delete files.'),
	('EN','cms_edit_del_list','Delete list'),
	('EN','cms_edit_del_list_confirm','Are you sure you want to delete this list?'),
	('EN','cms_edit_del_list_item_confirm','Delete list item?'),
	('EN','cms_edit_del_page','Delete page'),
	('EN','cms_edit_del_page_confirm','Are you sure you want to delete this page?'),
	('EN','cms_edit_del_site','Delete website'),
	('EN','cms_edit_del_template_confirm','Delete template?'),
	('EN','cms_edit_empty_list','Empty list'),
	('EN','cms_edit_empty_list_confirm','Are you sure you want to empty the list? This action cannot be undone!'),
	('EN','cms_edit_image_size_info','This image will be resized to the following dimensions: %1'),
	('EN','cms_edit_link_caption','Caption'),
	('EN','cms_edit_link_external','External'),
	('EN','cms_edit_link_internal','Internal'),
	('EN','cms_edit_link_target','Target'),
	('EN','cms_edit_link_url','Address (incl. http)'),
	('EN','cms_edit_list_headline','Edit list'),
	('EN','cms_edit_list_settings','Settings'),
	('EN','cms_edit_page_headline','Edit page'),
	('EN','cms_edit_page_in_menu','show in menus'),
	('EN','cms_edit_page_in_search','add to search index'),
	('EN','cms_edit_page_in_sitemap','have in sitemap'),
	('EN','cms_edit_page_publishing','Publishing'),
	('EN','cms_edit_page_publish_from','published from'),
	('EN','cms_edit_page_publish_to','published till'),
	('EN','cms_edit_page_redirect_status_permanent','permanent'),
	('EN','cms_edit_page_redirect_status_temporary','temporary'),
	('EN','cms_edit_page_redirect_to_page','Redirect to page'),
	('EN','cms_edit_page_redirect_type_external','external'),
	('EN','cms_edit_page_redirect_type_internal','internal'),
	('EN','cms_edit_page_settings','Settings'),
	('EN','cms_edit_page_sitemap_changefreq','Sitemap XML change frequency'),
	('EN','cms_edit_page_sitemap_priority','Sitemap XML priority'),
	('EN','cms_edit_page_strict_route','strict route matching (no parameters allowed)'),
	('EN','cms_edit_page_subpages','Subpages'),
	('EN','cms_edit_select_file','Choose file'),
	('EN','cms_edit_select_image','Choose image'),
	('EN','cms_edit_select_list_item','Add'),
	('EN','cms_edit_template_headline','Edit template'),
	('EN','cms_edit_unset_date','deactivate date'),
	('EN','cms_email_settings','E-mail settings'),
	('EN','cms_error_importing_list','An error occurred while importing file:'),
	('EN','cms_expired','Expired'),
	('EN','cms_expires','Expires on'),
	('EN','cms_export_list','Export list'),
	('EN','cms_failed_loading_page','Failed loading page.'),
	('EN','cms_fallback_folder_explanation','Used when the user\'s language is not available in the system'),
	('EN','cms_folder_name','Folder name'),
	('EN','cms_gallery_copyright','Copyright'),
	('EN','cms_gallery_date','Date'),
	('EN','cms_gallery_delete_item_confirm','Are you sure you want to remove this image?'),
	('EN','cms_gallery_description','Description'),
	('EN','cms_gallery_disable','Disable'),
	('EN','cms_gallery_enable','Enable'),
	('EN','cms_gallery_title','Title'),
	('EN','cms_hours','hours'),
	('EN','cms_import_delimiter','Column delimiter ('),
	('EN','cms_import_publish_by_default','Publish items?'),
	('EN','cms_import_reverse_order','Reverse order? First line in CSV will be last one in list'),
	('EN','cms_import_separator','Column separator'),
	('EN','cms_infinite_inserts','Template inserts produce infinite recursion! <b>%1</b> using <b>%2</b> using <b>%1</b> - it is not working like that :P'),
	('EN','cms_intro','Please select a page to start with.'),
	('EN','cms_items_no_versions_found','No versions were found'),
	('EN','cms_items_were_added','items were added.'),
	('EN','cms_item_sent_for_approval','Item sent for approval'),
	('EN','cms_item_subject_item_sent_approval','New item was sent for approval'),
	('EN','cms_item_version','Version'),
	('EN','cms_item_was_approved','Your item was approved by an admin'),
	('EN','cms_item_was_rejected','Your item was rejected by an admin'),
	('EN','cms_last_updated_by','Last update by'),
	('EN','cms_lists','Lists'),
	('EN','cms_lists_next_page','Next page'),
	('EN','cms_lists_prev_page','Prev page'),
	('EN','cms_lists_show_all','Show all'),
	('EN','cms_list_delete_item','delete item'),
	('EN','cms_list_frontend_writable','Frontend writable'),
	('EN','cms_list_imported','The file was imported and processed'),
	('EN','cms_list_item_unnamed','Unnamed'),
	('EN','cms_list_move_item','move item'),
	('EN','cms_list_name','Name'),
	('EN','cms_list_search_caption','Search'),
	('EN','cms_list_search_clear_caption','Clear'),
	('EN','cms_list_type','Type'),
	('EN','cms_list_type_list','Lists with template'),
	('EN','cms_list_type_menu','Menu'),
	('EN','cms_list_type_not_assigned','Not assigned (no type)'),
	('EN','cms_loading_assets','Loading assets ...'),
	('EN','cms_loading_configuration','Loading configuration ...'),
	('EN','cms_loading_lists','Loading lists ...'),
	('EN','cms_loading_pages','Loading pages ...'),
	('EN','cms_loading_permissions','Loading permissions ...'),
	('EN','cms_loading_templates','Loading templates ...'),
	('EN','cms_load_other_page_version','Load other version'),
	('EN','cms_menu_page_selection_invalid','Invalid selection'),
	('EN','cms_menu_select_page','Click here to select a page.'),
	('EN','cms_minutes','minutes'),
	('EN','cms_new_assets_folder','New Folder'),
	('EN','cms_new_list','New List'),
	('EN','cms_new_list_item','New item'),
	('EN','cms_new_page','New Page'),
	('EN','cms_new_template','New Template'),
	('EN','cms_no_assets_found','No assets were found'),
	('EN','cms_no_cached_version_yet','Cache is active for this page, but there is no cached version yet.'),
	('EN','cms_no_caching','No caching (not recommendable)'),
	('EN','cms_no_container','no container'),
	('EN','cms_no_permissions','You have no permissions to perform actions on this item'),
	('EN','cms_or_click_here_to_select_file','Or click here to select an existing file'),
	('EN','cms_page','Page'),
	('EN','cms_pages','Pages'),
	('EN','cms_page_be_published','This page is ready to be published, but with time limitation: It will be published on %1'),
	('EN','cms_page_caching_options','Caching configuration'),
	('EN','cms_page_caching_rule','Caching rule'),
	('EN','cms_page_container','Container'),
	('EN','cms_page_container_empty','none'),
	('EN','cms_page_content','Content'),
	('EN','cms_page_load_new_version','Are you sure you want to load this version? All unsaved changes will be lost. Please make sure to save all changes in the current version first.'),
	('EN','cms_page_name','Name'),
	('EN','cms_page_parent_is_self','The container of a page can not be the page itself. Change discarded.'),
	('EN','cms_page_preview_info','These settings are also stored when using the page preview.'),
	('EN','cms_page_route','Route'),
	('EN','cms_page_template','Template'),
	('EN','cms_page_template_really_change','Do you really want to change the template? Input fields will be reloaded.'),
	('EN','cms_preview_item','Preview item'),
	('EN','cms_preview_system','PREVIEW'),
	('EN','cms_problems_found','Problems identified'),
	('EN','cms_quicklinks_empty','No quicklinks available'),
	('EN','cms_quicklinks_title','Quicklinks'),
	('EN','cms_redirections','Redirections'),
	('EN','cms_redirect_from','Redirect from path:'),
	('EN','cms_redirect_to','To page:'),
	('EN','cms_regional_settings','Languages & countries'),
	('EN','cms_reject_item','Reject item'),
	('EN','cms_save_as_version','Save as new version'),
	('EN','cms_select_asset','Select asset'),
	('EN','cms_select_page_dialog_intro','Select a page or folder'),
	('EN','cms_send_item_approval','Send for approval'),
	('EN','cms_sent_for_approval','The item was sent for approval on'),
	('EN','cms_seo_settings','SEO settings'),
	('EN','cms_settings','SETTINGS'),
	('EN','cms_settings_saved_draft','These settings are for the live page, so any change here will be saved and pushed live directly. Moreover, you can\'t modify the template of a draft since it\'s based on the same page.'),
	('EN','cms_set_current_version','Set as live version'),
	('EN','cms_shared_lists','Shared lists'),
	('EN','cms_shared_templates','Shared templates'),
	('EN','cms_show_all_items','Published and unpublished items'),
	('EN','cms_show_approved_items','Show approved items'),
	('EN','cms_show_items_to_approve','Show items to approve'),
	('EN','cms_show_published_items','Only published items'),
	('EN','cms_show_unpublished_items','Only unpublished items'),
	('EN','cms_snippet_config_invalid','[Template] Snippet configuration invalid: <b>%1</b>, usage: <b>%2</b>'),
	('EN','cms_snippet_not_found','[Template] Snippet not found: <b>%1</b>'),
	('EN','cms_snip_textnumber_maxval','max. value %1'),
	('EN','cms_snip_textnumber_minval','min. value %1'),
	('EN','cms_snip_text_maxchars','limited to %1 chars'),
	('EN','cms_supported_import_snippets','Snippets whose values can be imported'),
	('EN','cms_template','Template'),
	('EN','cms_templates','Templates'),
	('EN','cms_template_code','Code'),
	('EN','cms_template_error','The template does not exist.'),
	('EN','cms_template_missing','Insert template missing: <b>%1</b>'),
	('EN','cms_template_name','Name'),
	('EN','cms_template_selectable','selectable'),
	('EN','cms_template_selectable_admins_only','Template can only be selected by administrators'),
	('EN','cms_template_selectable_all_users','Template can be selected by all users'),
	('EN','cms_template_selectable_on_pages','Selectable as page template'),
	('EN','cms_template_type','Type'),
	('EN','cms_template_type_1','Main templates for pages'),
	('EN','cms_template_type_2','Templates to be included'),
	('EN','cms_template_type_3','Layout and scheme for lists'),
	('EN','cms_template_usage','Used by'),
	('EN','cms_upload_add_files','Add files...'),
	('EN','cms_upload_cancel_upload','Cancel upload'),
	('EN','cms_upload_start_upload','Start upload'),
	('EN','cms_versions_history','Versions & Log'),
	('EN','cms_viewing_version','Previewing version'),
	('EN','cms_view_versions','View versions for this item'),
	('EN','cms_welcome','Welcome to the LOOP CMS!'),
	('EN','cms_with_status','Status:'),
	('EN','general_Actions','Actions'),
	('EN','general_activated','activated'),
	('EN','general_active','active'),
	('EN','general_Add','Add'),
	('EN','general_always','always'),
	('EN','general_approved','approved'),
	('EN','general_april','April'),
	('EN','general_april_short','Apr'),
	('EN','general_august','August'),
	('EN','general_august_short','Aug'),
	('EN','general_automatically','automatically'),
	('EN','general_Cancel','Cancel'),
	('EN','general_change','change'),
	('EN','general_choose','choose'),
	('EN','general_Close','Close'),
	('EN','general_continue','Proceed'),
	('EN','general_Country','Country'),
	('EN','general_create','Create'),
	('EN','general_Creation','Creation'),
	('EN','general_daily','daily'),
	('EN','general_datatable_sFirst','First'),
	('EN','general_datatable_sInfo','Showing _START_ to _END_ of _TOTAL_ records'),
	('EN','general_datatable_sInfoEmpty','No records'),
	('EN','general_datatable_sInfoFiltered','(filtered from _MAX_ total records)'),
	('EN','general_datatable_sLast','Last'),
	('EN','general_datatable_sLengthMenu','Display _MENU_ records per page'),
	('EN','general_datatable_sNext','Next'),
	('EN','general_datatable_sPrevious','Previous'),
	('EN','general_datatable_sProcessing','Loading...'),
	('EN','general_datatable_sSearch','Search'),
	('EN','general_datatable_sZeroRecords','Nothing found - sorry'),
	('EN','general_date_format','Y-m-d'),
	('EN','general_date_format_jquery','yy-mm-dd'),
	('EN','general_date_time_format','Y-m-d, H:i'),
	('EN','general_Day','Day'),
	('EN','general_december','December'),
	('EN','general_december_short','Dec'),
	('EN','general_Default','Default'),
	('EN','general_Delete','Delete'),
	('EN','general_delete_record','Do you really want to delete this record?'),
	('EN','general_Description','Description'),
	('EN','general_Details','Details'),
	('EN','general_done','Done'),
	('EN','general_Edit','Edit'),
	('EN','general_Email','Email'),
	('EN','general_Export','Export'),
	('EN','general_facebook_id','Facebook ID'),
	('EN','general_february','February'),
	('EN','general_february_short','Feb'),
	('EN','general_filter','Filter'),
	('EN','general_Firstname','Firstname'),
	('EN','general_friday','Friday'),
	('EN','general_friday_min','Fr'),
	('EN','general_friday_short','Fri'),
	('EN','general_Gender','Gender'),
	('EN','general_gender_F','female'),
	('EN','general_gender_M','male'),
	('EN','general_Groups','Groups'),
	('EN','general_help','Help'),
	('EN','general_hour','Hour'),
	('EN','general_hourly','hourly'),
	('EN','general_january','January'),
	('EN','general_january_short','Jan'),
	('EN','general_july','July'),
	('EN','general_july_short','Jul'),
	('EN','general_june','June'),
	('EN','general_june_short','Jun'),
	('EN','general_Language','Language'),
	('EN','general_Lastname','Lastname'),
	('EN','general_Limit_to_ip','Limit to ip'),
	('EN','general_Loading','Loading...'),
	('EN','general_Login_details','Login details'),
	('EN','general_march','March'),
	('EN','general_march_short','Mar'),
	('EN','general_may','May'),
	('EN','general_may_short','May'),
	('EN','general_minute','Minute'),
	('EN','general_Modified','Modified'),
	('EN','general_Module','Module'),
	('EN','general_monday','Monday'),
	('EN','general_monday_min','Mo'),
	('EN','general_monday_short','Mon'),
	('EN','general_Month','Month'),
	('EN','general_monthly','monthly'),
	('EN','general_Name','Name'),
	('EN','general_never','never'),
	('EN','general_Newsletter','Newsletter'),
	('EN','general_next','Next'),
	('EN','general_No','No'),
	('EN','general_november','November'),
	('EN','general_november_short','Nov'),
	('EN','general_now','Now'),
	('EN','general_no_selection','No selection'),
	('EN','general_Object','Object'),
	('EN','general_october','October'),
	('EN','general_october_short','Oct'),
	('EN','general_OK','OK'),
	('EN','general_on','on'),
	('EN','general_Password','Password'),
	('EN','general_Password_confirm','Confirm password'),
	('EN','general_Permission','Permission'),
	('EN','general_Permissions','Permissions'),
	('EN','general_Personal_details','Personal details'),
	('EN','general_Photo','Profile picture'),
	('EN','general_prev','Prev'),
	('EN','general_preview','Preview'),
	('EN','general_Profile','Profile'),
	('EN','general_RememberLogin','Remember login'),
	('EN','general_Remove','Remove'),
	('EN','general_Removed','Removed'),
	('EN','general_Salutation','Salutation'),
	('EN','general_saturday','Saturday'),
	('EN','general_saturday_min','Sa'),
	('EN','general_saturday_short','Sat'),
	('EN','general_save','Save'),
	('EN','general_save_publish','Save & Publish'),
	('EN','general_save_version_settings','Save version settings'),
	('EN','general_search','Search'),
	('EN','general_second','Second'),
	('EN','general_Select','Select'),
	('EN','general_send','Send'),
	('EN','general_seperated_by_semicolon','seperated by semicolon'),
	('EN','general_september','September'),
	('EN','general_september_short','Sep'),
	('EN','general_show','Show'),
	('EN','general_size','Size'),
	('EN','general_Social_media_details','Social Media details'),
	('EN','general_Subject','Subject'),
	('EN','general_sunday','Sunday'),
	('EN','general_sunday_min','Su'),
	('EN','general_sunday_short','Su'),
	('EN','general_Template','Template'),
	('EN','general_thursday','Thursday'),
	('EN','general_thursday_min','Th'),
	('EN','general_thursday_short','Th'),
	('EN','general_time','Time'),
	('EN','general_to','to'),
	('EN','general_today','Today'),
	('EN','general_translation','Translation'),
	('EN','general_tuesday','Tuesday'),
	('EN','general_tuesday_min','Tu'),
	('EN','general_tuesday_short','Tue'),
	('EN','general_twitter_id','Twitter ID'),
	('EN','general_Type','Type'),
	('EN','general_unknown','unknown'),
	('EN','general_unnamed','Unnamed'),
	('EN','general_URL','URL'),
	('EN','general_Username','Username'),
	('EN','general_wednesday','Wednesday'),
	('EN','general_wednesday_min','We'),
	('EN','general_wednesday_short','Wed'),
	('EN','general_weekly','weekly'),
	('EN','general_Year','Year'),
	('EN','general_yearly','yearly'),
	('EN','general_Yes','Yes'),
	('EN','nls_advanced_stats','Bounces & Complaints advanced stats'),
	('EN','nls_all_contacts','all contacts'),
	('EN','nls_aws_access_key','AWS Access Key'),
	('EN','nls_aws_host','AWS Host (do not include \'https://\')'),
	('EN','nls_aws_secret_key','AWS Secret Key'),
	('EN','nls_bounces_complaints','Bounces & complaints'),
	('EN','nls_bounces_hard','Bounces (H)'),
	('EN','nls_bounces_overall','%1/%2 bounces'),
	('EN','nls_bounces_soft','Bounces (S)'),
	('EN','nls_bounce_rate','%1 % bounce rate'),
	('EN','nls_campaign_does_not_exist','Campaign does not exist.'),
	('EN','nls_campaign_done_recipients','done'),
	('EN','nls_campaign_failed_recipients','failed'),
	('EN','nls_campaign_finish','finish time'),
	('EN','nls_campaign_log','log'),
	('EN','nls_campaign_num_recipients','recipients'),
	('EN','nls_campaign_progressing','New distribution'),
	('EN','nls_campaign_start','start time'),
	('EN','nls_campaign_started','Delivery started!'),
	('EN','nls_campaign_stats','Stats'),
	('EN','nls_campaign_status','status'),
	('EN','nls_campaign_success_recipients','ok'),
	('EN','nls_clicked','Clicked'),
	('EN','nls_clicked_email','%1/%2 clicked a link'),
	('EN','nls_clicks','Clicks'),
	('EN','nls_click_rate','%1 % click rate'),
	('EN','nls_complaint','Complaint'),
	('EN','nls_complaints','Complaints'),
	('EN','nls_configuration','Configuration'),
	('EN','nls_config_site','AWS Configuration for site'),
	('EN','nls_confirm_remove_emails','Are you sure that you want to perform this action? This can\'t be reverted.'),
	('EN','nls_contacts','Contacts'),
	('EN','nls_contacts_import','Import'),
	('EN','nls_contacts_selected','recipients selected'),
	('EN','nls_csv_assign_fields','Assign fields'),
	('EN','nls_csv_import','CSV Import'),
	('EN','nls_csv_import_select_file','Select file'),
	('EN','nls_csv_upload_start_note','Note: Upload starts as soon as a file is selected.'),
	('EN','nls_dashboard_statistics','Stats'),
	('EN','nls_delivery_done','Delivery is complete.'),
	('EN','nls_edit_contacts_list_error','Unable to find list.'),
	('EN','nls_edit_del_recipient_group_confirm','Delete recipient group?'),
	('EN','nls_edit_del_template_confirm','Delete template?'),
	('EN','nls_edit_newsletter_headline','Edit Newsletter'),
	('EN','nls_edit_recipients_list_headline','Edit Recipients List'),
	('EN','nls_edit_recipient_error','Recipient not found.'),
	('EN','nls_edit_template_headline','Edit Template'),
	('EN','nls_email','Email'),
	('EN','nls_emails_deleted_from_db','%1 emails were deleted from the DB.'),
	('EN','nls_email_error_existing','Email already existing'),
	('EN','nls_email_error_existing_revive','Email already existing and can be revived.'),
	('EN','nls_empty_item','Empty item'),
	('EN','nls_error_loading_graphs','Overrall results graph was not loaded. Press F5 to reload page.'),
	('EN','nls_export_complaints','Export complaints.'),
	('EN','nls_export_hard_bounces','Export hard bounces.'),
	('EN','nls_export_soft_bounces','Export soft bounces.'),
	('EN','nls_firstname','First name'),
	('EN','nls_for_site','For site'),
	('EN','nls_gender','Gender'),
	('EN','nls_gender_female','Female'),
	('EN','nls_gender_male','Male'),
	('EN','nls_gender_unknown','Unknown'),
	('EN','nls_hard_bounce','Hard Bounce'),
	('EN','nls_hard_bounces','%1 hard bounces. '),
	('EN','nls_lastname','Last name'),
	('EN','nls_latest_bounces','Latest %1'),
	('EN','nls_latest_openings','Latest 10 openings'),
	('EN','nls_link','Link'),
	('EN','nls_links','Links'),
	('EN','nls_list_newsletter_headline','Manage Newsletter'),
	('EN','nls_newsletter','Newsletter'),
	('EN','nls_newsletter_config_invalid','The newsletter is not ready for delivery.'),
	('EN','nls_newsletter_creation','Creation'),
	('EN','nls_newsletter_delete','delete'),
	('EN','nls_newsletter_delete_confirm','Are you sure you want to delete this newsletter?'),
	('EN','nls_newsletter_edit','Edit'),
	('EN','nls_newsletter_name','Name'),
	('EN','nls_new_contacts_list','New recipients list'),
	('EN','nls_new_newsletter','New Newsletter'),
	('EN','nls_new_template','New Template'),
	('EN','nls_nl_name','Newsletter name'),
	('EN','nls_nl_sender_email','Sender E-Mail address'),
	('EN','nls_nl_sender_name','Sender name'),
	('EN','nls_nl_service','E-Mail service'),
	('EN','nls_nl_subject','E-Mail subject'),
	('EN','nls_not_opened','Not opened'),
	('EN','nls_no_bounces_yets','No complaints or bounces yet'),
	('EN','nls_no_data_selected','No data was selected!'),
	('EN','nls_no_emails_to_delete','There are no emails to delete.'),
	('EN','nls_no_links','No links available'),
	('EN','nls_no_newsletter_for_template','No newsletters available.'),
	('EN','nls_no_openings','No openings yet'),
	('EN','nls_opened','Opened'),
	('EN','nls_openings','openings'),
	('EN','nls_openings_by_fringe','Openings by time fringe'),
	('EN','nls_openings_by_time','Openings by time'),
	('EN','nls_open_rate','%1 % open rate'),
	('EN','nls_overall_stats','Overall stats'),
	('EN','nls_received','Received'),
	('EN','nls_received_email','%1 / %2 received the email'),
	('EN','nls_received_rate','%1 % received rate'),
	('EN','nls_recent_nl_empty','No newsletters have been sent yet.'),
	('EN','nls_recent_nl_title','Recently delivered newsletters'),
	('EN','nls_recipients','Recipients'),
	('EN','nls_recipients_existing','%1 recipients existing.'),
	('EN','nls_recipients_show','%1 recipients displayed.'),
	('EN','nls_recipient_add','Add recipient'),
	('EN','nls_recipient_delete','delete'),
	('EN','nls_recipient_delete_confirm','Delete recipient completely?'),
	('EN','nls_recipient_edit_headline','Edit recipient'),
	('EN','nls_recipient_existing','%1 recipient existing.'),
	('EN','nls_recipient_groups','Recipient groups'),
	('EN','nls_recipient_group_name','Name'),
	('EN','nls_recipient_remove_from_group','remove from group'),
	('EN','nls_recipient_remove_from_group_confirm','Remove recipient from group?'),
	('EN','nls_recipient_show','%1 recipient displayed.'),
	('EN','nls_remove_complaints','Remove emails that complained'),
	('EN','nls_remove_from_newsletter','Remove from newsletter'),
	('EN','nls_remove_hard_bounces','Remove emails with hard bounce'),
	('EN','nls_remove_soft_bounces','Remove emails with soft bounce'),
	('EN','nls_salutation','salutation'),
	('EN','nls_sent','Sent'),
	('EN','nls_sent_on','Sent on: %1'),
	('EN','nls_show_newsletter_error','Unable to find newsletter.'),
	('EN','nls_snippet_config_invalid','[Template] Snippet configuration invalid: <b>%1</b>, usage: <b>%2</b>'),
	('EN','nls_snippet_not_found','[Template] Snippet not found: <b>%1</b>'),
	('EN','nls_soft_bounce','Soft Bounce'),
	('EN','nls_soft_bounces','%1 soft bounces.'),
	('EN','nls_start_campaign','START DELIVERY'),
	('EN','nls_start_sending_confirm','Are you sure you want to start the delivery of %1 emails?'),
	('EN','nls_start_test_delivery','TEST DELIVERY'),
	('EN','nls_tab_contacts','Recipients'),
	('EN','nls_tab_content','Content'),
	('EN','nls_tab_settings','Settings'),
	('EN','nls_tab_transmission','Delivery'),
	('EN','nls_templates','Templates'),
	('EN','nls_template_body_end_tag_missing','[Template] Body end tag missing'),
	('EN','nls_template_body_start_tag_missing','[Template] Body start tag missing'),
	('EN','nls_template_code','Code'),
	('EN','nls_template_head_end_tag_missing','[Template] Head end tag missing'),
	('EN','nls_template_images_note','If you are using the assetsurl snippet, upload all images to %1.'),
	('EN','nls_template_name','Name of template'),
	('EN','nls_template_snippet_liststart_missing','[Template] List end found but no list was started'),
	('EN','nls_test_delivery','test delivery'),
	('EN','nls_test_delivery_done','Test delivery done.'),
	('EN','nls_test_delivery_email_missing','Please enter a valid email address.'),
	('EN','nls_tip_export_emails','You can export a list of complaints and bounces (customized) to analyze it. This list is in Excel (.xls) format.'),
	('EN','nls_tip_remove_emails','Email addresses that returned a hard bounce or a complaint should be removed from the recipient list.'),
	('EN','nls_total_views','%1 total views'),
	('EN','nls_transmissions','Previous transmissions'),
	('EN','nls_unsubscribers','%1 unsubscribers'),
	('EN','nls_unsubscribes','Unsubscribes'),
	('EN','nls_update_template_failed','Failed to update newsletter template.'),
	('EN','nls_upload_csv','Import CSV'),
	('EN','nls_view_complaints','View advanced bounce stats'),
	('EN','nls_welcome','Welcome to the LOOP newsletter system!'),
	('EN','nls_x emails','%1 emails'),
	('EN','nls_x_emails_to_delete','There are %1 emails to delete.'),
	('EN','social_configuration','Configuration'),
	('EN','social_config_crawler_facebook_pageid','Facebook Page ID'),
	('EN','social_config_crawler_facebook_pageid_description','Crawle posts from this page'),
	('EN','social_config_crawler_foursquare_location','Foursquare Location'),
	('EN','social_config_crawler_foursquare_twitter_search','Foursquare CheckIn (Twitter)'),
	('EN','social_config_crawler_instagram_tag','Instagram tag search'),
	('EN','social_config_crawler_instagram_tag_description','Keywords'),
	('EN','social_config_crawler_twitter_search','Twitter search'),
	('EN','social_config_crawler_twitter_search_description','Keywords'),
	('EN','social_config_crawler_youtube_username','YouTube Username'),
	('EN','social_config_crawler_youtube_username_description','Import all videos from this account'),
	('EN','social_feeds','Feeds'),
	('EN','social_welcome','Welcome'),
	('EN','ugm_add_email','Add Email Template'),
	('EN','ugm_add_group','Add Group'),
	('EN','ugm_add_new_email','add new email template'),
	('EN','ugm_add_new_group','add new group'),
	('EN','ugm_add_new_permission','add new permission'),
	('EN','ugm_add_new_user','add new user'),
	('EN','ugm_add_user','Add User'),
	('EN','ugm_description_account_activated','Email that is sent once the user activates his/her account.'),
	('EN','ugm_description_account_activate_welcome','Email that is sent once the user get registered, in order to activate the account.'),
	('EN','ugm_description_email_activate','Email that is sent when the user changes his/her email, in order to confirm new email.'),
	('EN','ugm_description_password_changed','Email sent when the user recover his/her password. New password is already set in this email.'),
	('EN','ugm_description_password_forgot','Email sent when the user tries to recover his/her password, with link to page to reset password.'),
	('EN','ugm_edit_email','Edit Email Template'),
	('EN','ugm_edit_group','Edit Group'),
	('EN','ugm_edit_user','Edit User'),
	('EN','ugm_email_administration','Email Administration'),
	('EN','ugm_error_birthdate_invalid','Invalid birthdate.'),
	('EN','ugm_error_email_existing','Email address is alread in use.'),
	('EN','ugm_error_email_not_valid','Invalid email address.'),
	('EN','ugm_error_general','Error'),
	('EN','ugm_error_invalid_captcha','Ungültiger Sicherheitscode.'),
	('EN','ugm_error_invalid_username_password','Invalid username and password.'),
	('EN','ugm_error_mandatory_fields','Fill in all mandatory fields.'),
	('EN','ugm_error_max_length','Maximum length of field is %1.'),
	('EN','ugm_error_min_length','Minimum length of field is %1.'),
	('EN','ugm_error_min_max_length','Minimum length of field is %1. Maximum length of field is %2.'),
	('EN','ugm_error_not_found','Record not found.'),
	('EN','ugm_error_not_logged_in','You are not logged in or your session expired'),
	('EN','ugm_error_password_confirm_match','Passwords not matching.'),
	('EN','ugm_error_template_existing','An email template for this type, language, country is already existing.'),
	('EN','ugm_error_username_existing','Username is already in use.'),
	('EN','ugm_group_administration','Group Administration'),
	('EN','ugm_group_error_existing','Group already existing.'),
	('EN','ugm_mandatory_field','mandatory'),
	('EN','ugm_master_welcome','Welcome to the Users & Groups Administration.'),
	('EN','ugm_menu_companies','Companies'),
	('EN','ugm_menu_emails','E-Mail Templates'),
	('EN','ugm_menu_groups','Groups'),
	('EN','ugm_menu_permissions','Permissions'),
	('EN','ugm_menu_users','Users'),
	('EN','ugm_permission_administration','Permission Administration'),
	('EN','ugm_permission_error_existing','Permission already existing.'),
	('EN','ugm_register_default_group','Default group on registration'),
	('EN','ugm_user_administration','User Administration');

/*!40000 ALTER TABLE `box_dictionary` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle box_geo_ip_range
# ------------------------------------------------------------



# Export von Tabelle box_group
# ------------------------------------------------------------

LOCK TABLES `box_group` WRITE;
/*!40000 ALTER TABLE `box_group` DISABLE KEYS */;

INSERT INTO `box_group` (`id`, `name`, `grouping`, `created`, `deleted`)
VALUES
	(1,'Sysadmins',NULL,'2014-12-19 10:09:55',NULL);

/*!40000 ALTER TABLE `box_group` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle box_group_module
# ------------------------------------------------------------

LOCK TABLES `box_group_module` WRITE;
/*!40000 ALTER TABLE `box_group_module` DISABLE KEYS */;

INSERT INTO `box_group_module` (`id`, `group_id`, `module_id`, `assigned`)
VALUES
	(1,1,1,'2014-12-19 10:09:55'),
	(2,1,2,'2014-12-19 10:09:55'),
	(3,1,3,'2014-12-19 10:09:55'),
	(4,1,4,'2014-12-19 10:09:55'),
	(5,1,5,'2014-12-19 10:09:55'),
	(6,1,6,'2014-12-19 10:09:55');

/*!40000 ALTER TABLE `box_group_module` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle box_group_right
# ------------------------------------------------------------



# Export von Tabelle box_group_user
# ------------------------------------------------------------

LOCK TABLES `box_group_user` WRITE;
/*!40000 ALTER TABLE `box_group_user` DISABLE KEYS */;

INSERT INTO `box_group_user` (`id`, `group_id`, `user_id`, `assigned`)
VALUES
	(1,1,1,'2014-12-19 10:09:55');

/*!40000 ALTER TABLE `box_group_user` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle box_language
# ------------------------------------------------------------

LOCK TABLES `box_language` WRITE;
/*!40000 ALTER TABLE `box_language` DISABLE KEYS */;

INSERT INTO `box_language` (`id`, `name`, `int_name`, `short`)
VALUES
	(1,'Deutsch','German','DE'),
	(2,'English','English','EN');

/*!40000 ALTER TABLE `box_language` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle box_module
# ------------------------------------------------------------

LOCK TABLES `box_module` WRITE;
/*!40000 ALTER TABLE `box_module` DISABLE KEYS */;

INSERT INTO `box_module` (`id`, `name`, `folder`, `image`, `sort`)
VALUES
	(1,'Content Management','cms','app_cms.png',10),
	(2,'Newsletter','nls','app_crm.png',20),
	(3,'Admin','admin','app_config.png',255),
	(4,'Shop','shop','app_prestashop.png',40),
	(5,'Social Media','social','app_social.png',30),
	(6,'Users & Groups','ugm','app_ugm.png',200);

/*!40000 ALTER TABLE `box_module` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle box_site
# ------------------------------------------------------------



# Export von Tabelle box_site_module_config
# ------------------------------------------------------------



# Export von Tabelle box_sns_notification
# ------------------------------------------------------------



# Export von Tabelle box_user
# ------------------------------------------------------------

LOCK TABLES `box_user` WRITE;
/*!40000 ALTER TABLE `box_user` DISABLE KEYS */;

INSERT INTO `box_user` (`id`, `name`, `username`, `password`, `type`, `is_sysuser`, `is_sysadmin`, `language`, `country`, `email`, `deleted`, `limit_to_ip`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`)
VALUES
	(1,'Sysadmin','admin','adae3954078d72d33308bcd8ef10c60dcbf2f0725c2d5b64ee7fb1601dfd0640','backend',1,1,'EN','AT','admin@agentur-loop.com',NULL,NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','0000-00-00 00:00:00','2014-12-19 10:09:55');

/*!40000 ALTER TABLE `box_user` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle box_user_autologin
# ------------------------------------------------------------



# Export von Tabelle box_user_login_attempts
# ------------------------------------------------------------



# Export von Tabelle cms_cache
# ------------------------------------------------------------



# Export von Tabelle cms_cache_rule
# ------------------------------------------------------------



# Export von Tabelle cms_collection
# ------------------------------------------------------------



# Export von Tabelle cms_collection_item
# ------------------------------------------------------------



# Export von Tabelle cms_content
# ------------------------------------------------------------



# Export von Tabelle cms_file_gallery
# ------------------------------------------------------------



# Export von Tabelle cms_file_gallery_file
# ------------------------------------------------------------



# Export von Tabelle cms_list_search
# ------------------------------------------------------------



# Export von Tabelle cms_page
# ------------------------------------------------------------



# Export von Tabelle cms_redirection
# ------------------------------------------------------------



# Export von Tabelle cms_search
# ------------------------------------------------------------



# Export von Tabelle cms_search_tracking
# ------------------------------------------------------------



# Export von Tabelle cms_shortcut
# ------------------------------------------------------------



# Export von Tabelle cms_template
# ------------------------------------------------------------

LOCK TABLES `cms_template` WRITE;
/*!40000 ALTER TABLE `cms_template` DISABLE KEYS */;

INSERT INTO `cms_template` (`id`, `parent_id`, `site`, `name`, `file`, `creation`, `type`, `selectable_all_users`, `snippet_names`)
VALUES
	(1,0,1,'System API','austria-moments.at/system_api.php','2014-10-13',1,0,''),
	(2,0,1,'Partial Site Header','austria-moments.at/partial_site_header.php','2014-10-13',2,1,''),
	(3,0,1,'Partial Site Footer','austria-moments.at/partial_site_footer.php','2014-10-13',2,1,'');

/*!40000 ALTER TABLE `cms_template` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle cms_version
# ------------------------------------------------------------



# Export von Tabelle countries
# ------------------------------------------------------------



# Export von Tabelle nls_campaign
# ------------------------------------------------------------



# Export von Tabelle nls_content
# ------------------------------------------------------------



# Export von Tabelle nls_link
# ------------------------------------------------------------



# Export von Tabelle nls_link_click
# ------------------------------------------------------------



# Export von Tabelle nls_newsletter
# ------------------------------------------------------------



# Export von Tabelle nls_recipient
# ------------------------------------------------------------



# Export von Tabelle nls_recipient_assignment
# ------------------------------------------------------------



# Export von Tabelle nls_recipient_group
# ------------------------------------------------------------



# Export von Tabelle nls_send_log
# ------------------------------------------------------------



# Export von Tabelle nls_template
# ------------------------------------------------------------



# Export von Tabelle ugm_custom_fields
# ------------------------------------------------------------



# Export von Tabelle ugm_custom_fields_groups
# ------------------------------------------------------------



# Export von Tabelle ugm_group
# ------------------------------------------------------------



# Export von Tabelle ugm_group_permission
# ------------------------------------------------------------



# Export von Tabelle ugm_mailtemplate
# ------------------------------------------------------------



# Export von Tabelle ugm_user
# ------------------------------------------------------------



# Export von Tabelle ugm_user_autologin
# ------------------------------------------------------------



# Export von Tabelle ugm_user_group
# ------------------------------------------------------------



# Export von Tabelle ugm_user_login
# ------------------------------------------------------------



# Export von Tabelle ugm_user_login_attempts
# ------------------------------------------------------------



# Export von Tabelle ugm_user_meta
# ------------------------------------------------------------




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
