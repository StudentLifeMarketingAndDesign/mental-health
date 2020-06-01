<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\AssetAdmin\Forms\UploadField;

class HomePageAnnouncement extends DataObject {

	private static $db = array(
		"Title"           => "Varchar(155)",
		"Content"         => "HTMLText",
		"SortOrder"       => "Int",
		"ExternalLink"    => "Text",
		"UseExternalLink" => "Boolean",

	);

	private static $has_one = array(
		"AssociatedPage" => "SiteTree",
		"Image"          => "Image",
	);

	private static $default_sort = "SortOrder";

	private static $singular_name = "Announcement";
	private static $plural_name   = "Announcements";

	function getCMSFields() {
		$fields = new FieldList();

		$fields->push(new TextField('Title', 'Title'));

		$fields->push(new UploadField("Image", "Image"));
		$fields->push(new TreeDropdownField("AssociatedPageID", "Link to this page", "SiteTree"));
		$fields->push(new TextField('ExternalLink', 'Use the external link instead:'));
		$fields->push(new HTMLEditorField('Content', 'Content'));

		return $fields;
	}

}