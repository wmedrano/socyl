;;; socyl-version-test.el --- Tests for version information

;; Copyright (C) 2016, 2017 Nicolas Lamirault <nicolas.lamirault@gmail.com>

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 2
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
;; 02110-1301, USA.

;;; Commentary:

;;; Code:

(require 'pkg-info)

(setq current-version "0.3.0")


(ert-deftest test-socyl-library-version ()
  :tags '(version)
  (socyl-test-helper-with-test-sandbox
   (should (string= current-version (socyl--library-version)))))

(ert-deftest test-socyl-version ()
  :tags '(version)
  (socyl-test-helper-with-test-sandbox
   (should (string= current-version (socyl-version)))))


(provide 'socyl-version-test)
;;; socyl-version-test.el ends here
