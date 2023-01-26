(setq make-backup-files nil)
(load-file "./emacs-htmlize/htmlize.el")
(setq org-html-postamble "
<div id=\"postamble\" class=\"status postamble\">
<a href=\"/\">TOP</a>
<p>Date: %d</p>
<p>Last modified at: %C</p>
</div>
")
