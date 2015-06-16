<?php

use Phinx\Migration\AbstractMigration;

class FeatureBlog extends AbstractMigration
{
    /**
     * Change Method.
     *
     * More information on this method is available here:
     * http://docs.phinx.org/en/latest/migrations.html#the-change-method
     *
     * Uncomment this method if you would like to use it.
     *
    public function change()
    {
    }
    */
    
    /**
     * Migrate Up.
     */
    public function up()
    {
        $this->execute("INSERT INTO `cms_template` (`id`, `parent_id`, `site`, `name`, `file`, `creation`, `type`, `selectable_all_users`, `snippet_names`) VALUES (NULL, '0', '1', 'Page Blog', 'versioning-demo.local/page_blog.php', '2014-10-13', '1', '0', '');");
    }

    /**
     * Migrate Down.
     */
    public function down()
    {
        $this->execute("DELETE FROM `cms_template` WHERE `name` = 'Page Blog'");
    }
}