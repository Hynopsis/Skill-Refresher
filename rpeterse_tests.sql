-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2016 at 01:14 PM
-- Server version: 5.5.53-MariaDB
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rpeterse_tests`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Lists categories for different test qestions' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`Id`, `Name`) VALUES
(1, 'Html5'),
(2, 'Html5'),
(3, 'Css3'),
(4, 'Javascript'),
(5, 'JQuery');

-- --------------------------------------------------------

--
-- Table structure for table `Css`
--

CREATE TABLE IF NOT EXISTS `Css` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Question` text,
  `Answer` text,
  `Hint` text,
  `CategoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `Css`
--

INSERT INTO `Css` (`Id`, `Question`, `Answer`, `Hint`, `CategoryId`) VALUES
(2, 'What are the 4 major browser engines and who uses them?', 'Gecko - Firefox; Webkit - Chrome, Safari, Android; Presto - Opera, Trident - Microsoft', 'GWPT...', 1),
(3, 'What is it called whhen a browser doesn''t support something and falls back to another supported method?', 'Graceful degradation.', 'Gd...', 1),
(4, 'Starting with older browser support then later adding newer features is called?', 'Progressive Enhancement', 'Pe...', 1),
(5, 'What are two ways to link to a stylesheet?', '<link type="text/css"... or @import url("...");', 'li...', 1),
(6, 'How do you use different css for different media types?', '<link ... media="print">', 'attribute...', 1),
(7, 'In your css file, how do you apply css to a specific media type?', '@ media print{ ... }', '@...', 1),
(8, 'What are the 3 elements of a css selection?', 'Selector, Property, Value.', 'SPV...', 1),
(9, 'What is the universal selector?', '"*" - Asterisk', 'Star...', 1),
(10, 'How do you group css selectors for one rule?', 'h1, h2, h3{  ... }', ',...', 1),
(11, 'Describe a descendant combinator.', 'Used to get all elements within another element regardless of depth level.  div p{ ... }', '...', 1),
(12, 'Describe a child combinator.', 'Used to get all immediate children of an element.  aside > p{ ... }', '>...', 1),
(13, 'Describe a sibling combinator.', 'Getting elements that share a parent and are at the same depth level.  There are two types: adjacent and general.', NULL, 1),
(14, 'What are the two type of sibling combinators and their syntax?', 'General sibling combinator: p ~ h2{...}, and the adjacent combinator p + h2{...}.  General grabs all at the same level, when adjacent only grab the h2 directly following the p element.', '...', 1),
(15, 'What is a attribute selector and it''s syntax?', 'A attribute selector simply grabs and element based on it''s attributes.  Ex: div [id="main] { ... }.', '[]...', 1),
(16, 'How do you use a attribute selector regardless of it''s value?', 'a[title]{...}', '...', 1),
(17, 'How do you use a attribute selector with multiple attributes?', 'input [type="submit"] [class=="button"]{ ... }', '...', 1),
(18, 'What is a dynamic pseudo-class and what is the syntax?', 'A styling method that effects and element during active, hover, visited, link, etc.  Ex: a:hover{ ...}', ':...', 1),
(19, 'What is a structural pseudo-class and what is it''s syntax?', 'When you want to selected an element based on generic criteria.  Ex: selecting the 2nd <p> of 3 total - p:nth-child(2){ ... }', 'th...', 1),
(20, 'How would you select either the first or the last child using a structural pseudo-class?', ':first-child, :last-child, :nth-last-child(1), :nth-first-child(1)', ':...', 1),
(21, 'How would you select the child of an element if it has only one, using structural pseudo-classes?', ':only-child', 'oc...', 1),
(22, 'How do you select a child, based on type, using a structural pseudo-class?', ':nth-of-type(1){ ... }', '...', 1),
(23, 'How would you select either the first or the last child of an element, based on type using a structural pseudo-class.', ':nth-last-child(1), :nth-last-of-type(1), p:last-of-type, p:first-of-type ', '...', 1),
(24, 'How would you use css to target input states of controls?', ':checked, :enabled, :disabled', 'ced...', 1),
(25, 'How do you use the negation pseudo-class and what is it''s syntax?', 'It is everything other than the named element. Ex: :not(p){ ... }', '...', 1),
(26, 'If an element is targeted multiple times through css files, what is followed?', 'By selector-specificity, then by last one found (cascade)', 'ss, c', 1),
(27, 'What is an "em" and why would you use it?', 'It is a way of making fonts percentage based, related to their inherited size.  Ex: If inherited size was 16px, 1 em would be 16px, 2 em would be 32px...', '%...', 1),
(28, 'What are the 4 main vendor prefixes when using experimental Html5 features?', '-moz-, -ms-, -webkit- , -o-', 'mmwo..', 1),
(29, 'What are the three values needed to draw a border around an element, and what is it''s shorthand?', 'Border-color, border-width, border-style.  border: color style width Ex: border: green solid 5px', 'cws...', 1),
(30, 'How do you effect the positioning of a background for an element?', 'background-position: right top (or) 100% 0%', 'bp...', 1),
(31, 'How would you keep a background image in the same place as you move around the screen?', 'background-attachment: fixed (vs. scroll)', 'ba...', 1),
(32, 'What are the two types of css gradients?', 'Linear, radial', 'lr...', 1),
(33, 'What is the basic syntax for using linear gradients?', 'prefix linear-gradient(to bottom, color, 0%, color, 100%)', 'tcpcp', 1),
(34, 'How do you add text to an element through css and why would you want to?', 'content: "!", only used for inserting styling elements so easily modified.', 'c...', 1),
(35, 'If using a fixed website layout, around what width should you use?', '960px', '...', 1),
(36, 'How do you make a element horizontally responsive?', 'max-width: 100%', 'mw...', 1),
(37, 'What are the 4 basic elements of the traditional box model and in what order from inside out?', 'Content, padding, border, margin', 'cpdm', 1),
(38, 'When using the shorthand for margin, what is the ordering?', 'top, right, bottom, left', 't .... l ...', 1),
(39, 'By default, what does width apply to, and how can you change it?', 'It normally only applied to content, and can be changed by setting box-sizing: border-box.', 'cbb...', 1),
(40, 'How do you ensure that there are no floating elements around another element?', 'clear: left or right or both', 'c...', 1),
(41, 'Why should you use a css reset?', 'For better cross-browser consistency.', NULL, 1),
(42, 'What properties cannot be used on inline elements?', 'width, height, margin', 'whm...', 1),
(43, 'What are the four values for the position property?', 'static, relative, fixed, absolute', 'sarf...', 1),
(44, 'What does position:relative allow you to do?', 'Use position: right,left, top, bottom - to position elements relative to their original position.', '...', 1),
(45, 'What is the general process for the absolute positioning of an element?', 'Set it''s position property to absolute, and set its parent position to relative.  ', '...', NULL),
(46, 'What is the font stack?', 'The list of fonts you want to use, which provides fall-through from left to right.', '...', 1),
(47, 'What are the five generic fonts used as fallback on all browsers?', 'Serif, Sans-serif, cursive, fantasy, monospace', 'sscfm...', 1),
(48, 'How would you direct a browser to download a specific font?', '@font-face font-family: url(" ");  Or better yet, use google web fonts.', 'ff', 1),
(49, 'What are two ways to reduce font size by 50%?', '.5em or 50%', '5...', 1),
(50, 'How do you add space between characters without changing the font?', 'line-height: ...', 'lh...', 1),
(51, 'What property would you use to underline or strikeout text?', 'text-decoration: underline', 'td...', 1),
(52, 'What property would you use to change text to uppercase?', 'text-transform: uppercase', 'tt...', 1),
(53, 'How would you increase the blank space between text characters?', 'letter-spacing: ', 'ls', 1),
(54, 'How do you add a tabbed like space to the front of a paragraph element?', 'text-indent: 1.25em', 'ti...', 1),
(55, 'How do you preserve spaces and returns inside of a <p>?', 'white-space: pre-line', 'ws...', 1),
(56, 'How do you allow breaking of words to better fit an element?', 'overflow-wrap/word-wrap: break-word', 'ow..', 1),
(57, 'How do you change bullet points on a list?', 'list-style-type: circle', 'lst...', 1),
(58, 'How would you replace a bullet point with an icon?', 'list-style-image: url(" " )', 'lsi...', 1),
(59, 'How do you position the bullet points over so they are part of the content?', 'list-style-position: inside', 'lsp...', 1),
(60, 'How would you move an element 50px on the x-axis and 50px on the y-axis using the transform property?', 'webkit-trasform:translate(50px,50px)', 'tt...', 1),
(61, 'How would you rotate and element 45 degrees and skew in on the x-axis by 10 degrees?', 'webkit-transform:rotate(45deg) skew(10deg);', '...', 1),
(62, 'How do you change the transformation handle for elements?', 'transform-origin: 0% 0% (50% 50% default)', 'to...', 1),
(63, 'What is the safest way to use the newest css3 features?', 'prefix, then without as fallback for when the prefix is not longer needed.', '...', 1),
(64, 'What is the process for adding scaling animations to an element?', 'Declase initial transform state, declare transition and transition event on other element, declare transition property inside of event and duration.', '...', 1),
(65, 'What are examples of the 3 main media query logical operators?', '(AND @media (min-width: 600px) and (max-width: 800px)), (OR @media (min-width: 600px), (NOT @media not screen)', '...', 1),
(66, 'How do you get older browser to ignore media queries?', '@ media only screen', 'o...', 1),
(67, 'What is the media query to only apply if the screen is less than 960px?', '@media screen and (max-width 960px)', 'mw...', 1),
(68, 'What is the media query to only apply if screen is larger than 960px?', '@media screen and (min-width 960px)', 'mw...', 1),
(69, 'descendant (space), adjacent (+), general (~), child (>)', 'What are the 4 types of css combinators?', 'dagc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Html5`
--

CREATE TABLE IF NOT EXISTS `Html5` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Question` text,
  `Answer` text,
  `Hint` text,
  `CategoryId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `Html5`
--

INSERT INTO `Html5` (`Id`, `Question`, `Answer`, `Hint`, `CategoryId`) VALUES
(1, 'What are elements that have no closing statements called?', 'Void Elements', 'Return type of', 1),
(4, 'What does the DOCTYPE let the browser?', 'What html specification to follow.  Prior to html5, a DTD, or Document Type Definition was needed with a link to the proper specification.', '4 and 5 are different', 1),
(6, 'What is the only element that appears outside of the <html> tags?', '<!DOCTYPE html>', 'spec', 1),
(7, 'Where and how do you assign the language attribute?', '<html lang="en">', 'logical position', 1),
(8, 'Where do you place the <title> tag?', 'In the <head> element.', 'Few things go here', 1),
(9, 'Why should you validate your code?', 'Easier code debugging, future proofing, standards-compliant, easier maintenance, best practices.', 'dfsb', 1),
(10, 'What is the purpose of the <header> element?', 'HTML5 element used for navigation, titles, headings, and normally contains more than one element.', '...', 1),
(11, 'What is the purpose of the <section> element?', 'A non-generic element with a natural heading or title (h1,h2), not to be used as just a wrapper.  In those cases, use a <div> element. Ex: Chapters, numbered section of documents.', 'Not a lollipop', 1),
(12, 'What is the purpose of the <article> element?', 'For containing information that doesn''t affect the flow of the document.  It would make sense if all other elements were removed around it.  Generally for blog posts, articles, etc. and other items that could be syndicated.', 'Almost like it sounds', 1),
(13, 'What is the purpose of the <meta> tag?', 'This tag is used for providing data about the data.  Some attributes include description and author.', 'data', 1),
(14, 'What is a relative path?  ', 'File directory relative to the folder containing the current file.  ', '...', 1),
(15, 'How do you go up one folder from the current document folder?', '../', '...', 1),
(16, 'How do you create a hyperlink to another section of the current page?', 'href="# + element id".  Ex: <a href = "#id">', 'Not very classy', 1),
(17, 'How do you add a tooltip to a hyperlink?', 'Add a title attribute to the <a> element.', 't', 1),
(18, 'How do you make a hyperlink open in a new browser tab?', 'In the form element, add a the target attribute and set it to "_blank". Ex: <form target="_blank">.', 'opposite', 1),
(19, 'How do you quote a source and properly cite it?', '<blockquote cite="linkToSource"> </blockquote>', '...', 1),
(20, 'How do you quote an section of text within a <p> tag?', '<q> </q>', 'single letter', 1),
(21, 'How do you designate abbreviations inside of a string of text?', '<abbr title="World Wide Web"> WWW </abbr>', 'almost chilly', 1),
(22, 'How do you make sure that something is displayed if a image cannot be loaded?', 'Add a alt attribute to your img tags. Ex: alt="Description of this image"', 'Also helpful for screen readers', 1),
(23, 'What is the most efficient method to size a image element on a webpage?', 'Size your image externally instead of having the browser do it.  Also make sure you explicitly set height and width attributes to this default size.', 'double duty', 1),
(24, 'Name the three main elements to a html table?\r\n', 'th - for table heading, tr - for table row, and td - for table data.', 'same letter', 1),
(25, 'What attribute allows a table cell to take up multiple columns?', '<th colspan="# of columns to span"></th>', 'stretchy', 1),
(26, 'Name three elements to give tables better semantic meaning?', '<thead> <tfoot> <tbody>', 'natural sections', 1),
(27, 'How do you specify dates and times in html5, providing human-readable and machine-readable data?', '<time datetime="2008-02-14 20:00">Next Tues</time>', '...', 1),
(28, 'What are the two required elements of a form?', 'Action and method', '...', 1),
(29, 'What is the purpose of the action attribute on a form?', 'To determine what happens when a form is submitted.  Ex: action="Validate()"', '...', 1),
(30, 'What is the purpose of the method attribute on a form?', 'Can either be GET or POST.  Get is encoded in the html path, so is visible to everyone.  POST hides the passed data so necessary for secure applications.', '...', 1),
(32, 'How are the key-pair values generated for a form submission?', 'The "key" is pulled from the name attribute on the input, and the value is simply the value given to that input at time of submission.', 'alicia', 1),
(33, 'What is used to separate key-pair values in the URL of a form submission, and basic format?', '"&" ...com?name=value&name1=value1&....', '...', 1),
(34, 'What is the length limit of URL characters when using the GET method?', 'Around 2,000 characters', '...', 1),
(35, 'How do you tie a label to a input element?', 'Add the attribute for=" section id ".', '...', 1),
(36, 'How do you set a form input control to a default?', 'value="2"', '...', 1),
(37, 'List two different ways to deactivate input controls and their differences.', 'Add either the disabled or the readonly attribute to the input control.  Readonly is still sent to the server, disabled is not.', '...', 1),
(38, 'How do you change the physical length of a input control?', 'Add a size attribute.  Ex: size="65" which represents the width in the current font and font-size.  It is often better to use css instead (width) to make more consistent across browsers.', 'Couple of options', 1),
(40, 'How do you set a default selected value for a checkbox, radio button, etc.?', '<input .... checked>', '...', 1),
(41, 'How do you set radio buttons to only have one available option?', 'Give them all the same "name" attribute.', '...', 1),
(42, 'What is a method to send data to the server without the user knowing?', 'Set the input type to "hidden" and supply a name to have its data sent to the server.', '...', 1),
(43, 'How do you set the text on the input type of "submit"?', 'value = "textToShow"', '...', 1),
(44, 'What are two ways to create a submit button?', '<button type="submit">...<input type="submit">', '...', 1),
(45, 'What is the form input for clearing all data on a form?', '<input type="reset">', '...', 1),
(46, 'How do you create a basic drop-down menu?', '<select id="sample">\r\n  <option>First</option>\r\n  <option>Second</option>\r\n</select>', '...', 1),
(47, 'How do you set a default value for a drop-down menu?', '<option selected> First </option>', '...', 1),
(48, 'How do you assign a different value to a <option> that what the user sees?', '<option value="diffValue"> User Value </option>', '...', 1),
(49, 'How do you allow more than one option in a drop-down menu?', '<select multiple> ...', '...', 1),
(50, 'How can you organize a drop-down menu and give options a heading?', '<optgroup title="OurHeading>', '...', 1),
(51, 'What element do you use to allow a user to upload a file?\n', '<input name="upload" type="file">', '...', 1),
(52, 'How do you group elements within a form, and label those groups?', '<fieldset>\r\n    <legend> The name </legend>\r\n    ...\r\n</fieldset>', '...', 1),
(53, 'What happens if a browser doesn''t support a input type?', 'It will default to a simple text input.', '...', 1),
(55, 'What is the regular expression for a US phone number with area code?', '[0-9]{3}[0-9]{3}[0-9]{4}', '...', 1),
(56, 'What are the 5 types of microdata?', 'itemscrope, itemprop, itemtype, itemid, itemref', 'spitr', 1),
(57, 'What is the microdata "itemscope" used for?', 'Declared inside of a html tag, and indicates that itself and any children (at any level) all belong together.', '...', 1),
(58, 'What is the microdata "itemtype" used for?', 'It is used to refer to a specific item category as listed on schema.org.  Directly follows the "itemscope" microdata tag.', '...', 1),
(59, 'What is the microdata "itemprop" used for?', 'Used to sub-classify items within an "itemscope". Say if the "itemtype" was movie, then the director would be a property of this item, and labeled with the itemprop category. Ex: schema.org/movie/director.  Usually paired with a <span> tag since doesn''t interrupt the flow of text.', '...', 1),
(60, 'What is the microdata "itemid" used for?', 'Used as a unique identified.  Can be used to tie to a isbn number for a book, for example.', '...', 1),
(61, 'What is the microdata "itemref" used for?', 'Used as a variable so you can reuse prop tags.   <meta id="sample" itemprop="name" content="Bob"> Now can use ...itemprop = "sample">', '...', 1),
(62, 'Two reasons to add labels to all inputs.', 'Allows screen readers to say them, and expands the clickable area to include label and input together.', '...', 1),
(63, 'How do you control tab ordering for input controls?', '<input ... tabindex="1">', '...', 1),
(64, 'What are the 3 main video formats for HTML5?', 'WebM, MP4, OGV', 'MOW', 1),
(65, 'What are the 4 main audio formats in HTML5?', 'OGG, MP3, M4A, WAV', 'MMOW', 1),
(66, 'How to show controls on a HTML5 video control?', '<video ... controls>', '...', 1),
(67, 'In HTML5, how do you add multiple video formats for cross-browser compatibility?', '<video...>\r\n   <source src=" " type="video/mp4">\r\n   <" ">\r\n</video>', '...', 1),
(68, 'How do you change the thumbnail image on a HTML5 video?', '<video ... poster ="img/yourPic.png">', '...', 1),
(69, 'How do you assign, retrieve, delete one, and delete all using HTML5 LocalStorage?', 'localStorage.setItem(key, valyue)\r\nlocalStorage.getItem(key)\r\nlocalStorage.removeItem(key)\r\nlocalStorage.clear', '...', 1),
(70, 'How do you check is a browser supports LocalStorage?', 'if(localStorage){}', '...', 1),
(71, 'What are the two types of HTML5 storage objects?', 'LocalStorage and SessionStorage', '...', 1),
(72, 'What html tag do you use to show an important piece of text?', '<strong> Even though the tag may bold it, this indicates something important.  Don''t confuse CSS bold and <strong>, they serve different purposes.', '...', 1),
(73, 'What html tag show a different "mood"?', '<em> Which may italicize the text, but is meant to express a different "mood".', '...', 1);

-- --------------------------------------------------------

--
-- Table structure for table `JavaScript`
--

CREATE TABLE IF NOT EXISTS `JavaScript` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Answer` text,
  `Question` text,
  `Hint` text,
  `CategoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=172 ;

--
-- Dumping data for table `JavaScript`
--

INSERT INTO `JavaScript` (`Id`, `Answer`, `Question`, `Hint`, `CategoryId`) VALUES
(1, 'HTTP: Hypertext transfer protocol.', 'What is the protocol used to transfer documents to and from servers.', NULL, NULL),
(2, 'AJAX - Asynchronous Javascript and XML.', 'What is the technique for creating fast interactivity without a full server response?', NULL, NULL),
(3, 'Separating JavaScript into separate files, avoiding in-line code.', 'What is unobtrusive JavaScript?', NULL, NULL),
(4, '<input type="button" onClick="myFunction()">', 'How do you call a function from a button press?', NULL, NULL),
(5, 'onError if there is a problem with a document or image loading.  onAbort is IE specific on fires when a image doesn''t load properly.', 'What is the event handlers for when there is a problem loading an image?', NULL, NULL),
(6, 'onBlur', 'What is the event handler for when a user moves away from a form element?', NULL, NULL),
(7, 'onChange', 'What is the event handler for when a user modifies a form element?', NULL, NULL),
(8, 'onClick', 'What is the event handler for when a user interacts with a button-like element?', NULL, NULL),
(9, 'onFocus', 'What is the event handler for when a user activates an form element?', NULL, NULL),
(10, 'onLoad', 'What is the event handler for when a page is finished loading?', NULL, NULL),
(11, 'onMouseOut', 'What is the event handler for when a user moves their mouse away from a form element?', NULL, NULL),
(12, 'onMouseOver', 'What is the event handler for when a user moves the mouse over a form element?', NULL, NULL),
(13, 'onSubmit', 'What is the event handler for when a user finalizes a form entry?', NULL, NULL),
(14, 'onUnLoad', 'What is the event handler for when a user leaves a window or frame?', NULL, NULL),
(15, 'W3C, or the World Wide Web Consortium', 'Who sets web production standards to ensure consistency between browsers?', 'www', NULL),
(16, 'Compiled languages can be run naturally by a CPU, while scripting (or interpreted) languages are converted to machine code at run-time.', 'What is the difference between compiled languages and scripting languages?', NULL, NULL),
(17, 'Structure, Content, Behavior', 'What are the 3 layers of a webpage?', 'SCB', NULL),
(18, 'You load in the head if needed before the page loads, in the body if it performs actions pertaining to the body of the page.', 'When do you load a script in the body vs in the head element?', NULL, NULL),
(19, 'type, src - though are several others', 'What are the 2 main attributes for a script tag?', 'ts', NULL),
(20, 'Generally only used for testing.  It will overwrite all existing HTML.  To change a element, use innerHtml instead.', 'What is the purpose of document.write()?', NULL, NULL),
(21, '<script language="JavaScript">\r\n<!--\r\nHere you put your JS code.\r\nOld browsers will treat it\r\nas an HTML comment.\r\n//-->\r\n</script>', 'How do you hide JavaScript from older browsers?', NULL, NULL),
(22, '<noscript> Please turn on your JavaScript </noscript> If its enabled, then noscript is ignored.', 'How do you message users that their JavaScript is disabled?', 'ns', NULL),
(23, '" I''m "  or using escape character '' I\\''m ''', 'What are two ways to display an apostrophe?', NULL, NULL),
(24, '1 is true, and zero is false', 'What are the numeric equivalents for booleans?', NULL, NULL),
(25, 'typeof(var)', 'How do you determine of what type something is?', 'of', NULL),
(26, 'Null at some point as initialized and had a value (though may have been emptied), undefined elements have never been initialized.', 'What is the difference between null and undefined?', NULL, NULL),
(27, 'var one, two, three', 'How do you define multiple variables of the same type on the same line?', ',', NULL),
(28, 'When you are assigning a value. var x; vs. x = 5;', 'When is "var" unnecessary (but still recommended)?', NULL, NULL),
(29, 'The number gets turned into a string.', 'What happens if you concatenate a number and a string? ', NULL, NULL),
(30, 'const TEST = 5; Though is is not supported by all browsers.  Better to use a var but use all caps to signal usage as a constant (var TEST = 5).', 'How do you declare a constant variable?', NULL, NULL),
(31, 'alert, prompt, confirm', 'What are the 3 types of dialog boxes?', 'cap', NULL),
(32, 'Question, default value.  If the user clicks okay, a string is returned.  If cancel is pressed, null is returned.', 'What are the two parameters for the prompt method, and the return value?', NULL, NULL),
(33, 'It takes the string question as a parameter.  It returns either true or false.', 'What are the arguments and the return values of a confirm dialog box?', NULL, NULL),
(34, 'unary, binary, ternary', 'What are the 3 types of operators for single, dual, and triple evaluations?', 'but', NULL),
(35, 'The x value is incremented after assignment to y, vs before the assignment.', 'What is the difference between y = x++ and y = ++x?', NULL, NULL),
(36, '+', 'What is the only operator JavaScript has to manipulate string?', NULL, NULL),
(37, 'It is true, since it will treat them both as string and compare the length of digits(same), and the value of each character(same).', 'In an equality test what is the value of    ("500" == 500) and why?', NULL, NULL),
(38, 'True', 'What is the result of (null == undefined)?', NULL, NULL),
(39, '=== or !==', 'How do you test if a value is not only the same, but the same type as well?', '3', NULL),
(40, 'var result = x < y;', 'How do you capture the result of an equality check?', NULL, NULL),
(41, 'And, Not, Or -> &&, !, ||', 'What are the 3 logical/boolean operators?', 'Noa', NULL),
(42, '(If this is true)?(do this):(else do this)', 'What is the syntax for a conditional/ternary operator?', NULL, NULL),
(43, 'Number(), String(), Boolean()', 'What are the 3 built in function to converts to the primitive data types?', 'Nsb', NULL),
(44, 'parseInt(), parseFloat()', 'How do you convert a string to a integer, convert to a float?', NULL, NULL),
(45, 'eval("2 + 3");', 'What is a built in method to execute JavaScript statements conditionally in a string format?', NULL, NULL),
(46, 'switch(color){\r\n  case "red":\r\n  alert("This is red");\r\n  break;\r\n\r\n  default:(<-optional)\r\n  alert("Unknown color");\r\n  break;\r\n}', 'What is the format for using a switch statement?', NULL, NULL),
(47, 'break and continue', 'What are the two built in statements for controlling loops?', NULL, NULL),
(48, 'Do while executes at least once.', 'What is the difference between while and do-while loops?', NULL, NULL),
(49, 'do{ i++} while(i < 20);', 'What is the format for a do-while loop?', NULL, NULL),
(50, 'You use labels for loop control with nested loops generally.  General syntax label: code. Can be used to break from any code.  Ex: x = 0; list:{ x++; break list; x++} - x equals one.', 'How do you use JavaScript labels and why?', NULL, NULL),
(51, 'Any, if a function receives extra they are ignored.  Arguments not passed are undefined.', 'How many arguments must you pass when calling a function.', NULL, NULL),
(52, 'With the pseudo-protocol: "JavaScript:Function()"', 'How do you call a function from a link?', NULL, NULL),
(53, 'Assign attribute ex: onClick="function()", or assigning through document.form.addEventListener("click", myFunction);', 'What are two ways to add an event handler to an input control?', NULL, NULL),
(54, 'Use the var keyword.', 'How do you hide a variable within a function?', NULL, NULL),
(55, 'All variables naturally are unless created inside a function with the var keyword.', 'How do you make a variable global in scope?', NULL, NULL),
(56, 'Undefined.', 'What does a function return if a return value is not explicit?', NULL, NULL),
(57, 'A function for directly assigning to events, variables, etc.  Ex: window.onload = function(){ ... };', 'What is an anonymous function, and what is the syntax?', NULL, NULL),
(58, 'It is a anonymous function within another function.  ', 'What is a closure?', NULL, NULL),
(59, 'A function that calls itself, but assures it is not infinite.', 'What is a recursive function?', NULL, NULL),
(60, '0,1,1,2,3,5,8 - where value is equal to the two before it.  (Finish this code 19%)', 'What is the Fibonacci sequence, and what is the code to solve it?', NULL, NULL),
(61, 'try{ .. } catch(er){ ... }', 'What is the syntax for try/catch blocks?', NULL, NULL),
(62, '.name and .message', 'What are the two properties of the catch error message?', NULL, NULL),
(63, 'use finally (try/catch)', 'How do you make sure your programs fail gracefully?', NULL, NULL),
(64, 'In the try section, add throw "My error", then in the catch statement check if (er == "My error"){ .. }.', 'How do you create custom exceptions?', NULL, NULL),
(65, 'properties and attributes', 'What are the two names for variables owned by an object?', NULL, NULL),
(66, 'user-defined, core/built-in(Date, String, Number), browser objects (BOM), document objects (DOM).', 'What are the 4 type of objects?', NULL, NULL),
(67, 'new', 'What keyword do you use to define a constructor?', NULL, NULL),
(68, 'var care = new Object(); car.name = "beetle"; car.color = "black";', 'How would you create a generic car object with name and color properties?', NULL, NULL),
(69, 'Functions are stand-alone, while methods are tied to an object.', 'What is the difference between a function and a method?', NULL, NULL),
(70, 'Either brush.paint = paint(); or brush.paint = function(){ ...};', 'How do you assign a method to an object?', NULL, NULL),
(71, 'Used to easily access the current object.', 'What is the purpose of the "this" keyword?', NULL, NULL),
(72, 'function Book(){ this.title = "Got It!";} var book = new Book(); Capitalize class functions to make easier to read.', 'How do you create a "class" and define an instance of it?', NULL, NULL),
(73, 'Use inline or anonymous functions instead of global ones.', 'How do you encapsulate methods within an object?', NULL, NULL),
(74, 'var car = {name : "Ford, color : "red"};', 'How do you create an object literal?', NULL, NULL),
(75, 'To avoid having to call this.  with(this){\r\n   color = "black";\r\n   name = "cat";\r\n}', 'How do you use the "with" keyword and why?', NULL, NULL),
(76, 'for(var prop in thisObject){ .. }', 'What is a good method for looping through the properties of an object?', 'for', NULL),
(77, 'thisObject[prop]', 'In a for/in loop (ex: for(var prop in thisObject), how do you access the values of the properties?', '[]', NULL),
(78, 'It is the way of providing inheritance to it''s objects.  book.prototype.publisher = "..."; - added to all books.', 'What is the purpose of an object prototype and it''s syntax?', NULL, NULL),
(79, 'book.property > book.prototype > object.prototype', 'What is the prototype lookup chain?', NULL, NULL),
(80, 'toString() valueOf()', 'What are two object methods for basic conversions to primitives?', NULL, NULL),
(81, 'hasOwnProperty()', 'How to check if an object has a particular property, but not inherited?', NULL, NULL),
(82, 'book.constructor.  Ex: if(book.constructor = Book){ We have a member of the book class };', 'How can you check what function was used as a constructor to create a class?', NULL, NULL),
(83, 'var Base = function(){ properties...methods}; function Sub(){empty}; sub.prototype = new Base(); sub.prototype.constructor = Sub; sub.prototype.name = "example"; etc.', 'How is inheritance used in JavaScript?', NULL, NULL),
(84, 'subscript', 'What is another name for the index of an array?', NULL, NULL),
(85, 'numeric/integer, associative/string', 'What are the 2 types of array and their respective indicies?', NULL, NULL),
(86, 'var array = new Array(1,2,3); literal notation, var array = [1,2,3](preferred).', 'What are the two way to declare an array with initial values?', NULL, NULL),
(87, 'var array = new Array(10);', 'How to construct and array with 10 element?', NULL, NULL),
(88, 'array.push(value), array[array.length] = value;', 'What are 2 methods for adding new elements to an array?', NULL, NULL),
(89, 'array.length = 10; Can use array.length = 0 to clear array, and give length less that current number of elements to shrink array.', 'How do you set the length of an array after creation?', NULL, NULL),
(90, 'object.prop and object["prop"].  Can be accessed as numeric and associative arrays.', 'What are the two ways to access the properties of an object?', NULL, NULL),
(91, 'array["WI"] = "Wisconsin";', 'Give an example of an associative array''s syntax using a state and it''s abbreviation.', NULL, NULL),
(92, 'An array with all the matching values.', 'In an associative array, what is returned if there is more than one match?', NULL, NULL),
(93, 'var array = array.concat(otherArray);', 'How do you add the contents of one array to another?', NULL, NULL),
(94, 'array.pop();', 'How do you remove the last value of an array and return it?', NULL, NULL),
(95, 'shift(), unshift()', 'How do you add/remove elements from the beginning of an array?', NULL, NULL),
(96, 'var newArray = array.slice(2(inc.), 6 (exc.);', 'How do you copy a range of elements from an array?', NULL, NULL),
(97, 'array.splice(2,0, "Tom", "Bob"); First number if index where to insert, second is number of element to replace, if any.', 'How do you remove/replace elements in an array?', NULL, NULL),
(98, 'An object with the same name as a primitive data type it represents.  Used to allow methods and properties to be defined for the primitive.', 'What is a wrapper and what is its purpose?', NULL, NULL),
(99, 'theString.charAt(index);', 'How do you get the value of a character within a string?', NULL, NULL),
(100, 'indexOf() and lastIndexOf(), -1 is returned if nothing found.', 'How do you find the first or last instance of a substring within another string, and what is returned if nothing found?', NULL, NULL),
(101, 'number.toFixed(2);', 'How do you convert a number to a string with 2 decimals?', NULL, NULL),
(102, '0, "", NaN, null', 'When using a boolean literal, what are some entries that return false?', NULL, NULL),
(103, 'navigator', 'What object contains methods and properties to describe the browser?', NULL, NULL),
(104, 'Multipurpose internet mail extensions.  They are used to identify data types for plugin support.', 'What are MIME types?', NULL, NULL),
(105, 'window, ex: alert(" ");', 'What is the top-level object that doesn''t need to be referenced when calling it''s methods?', NULL, NULL),
(106, 'var f = new Function(para, para1, "return para + para1");', 'What is the format for using the function object?', NULL, NULL),
(107, 'setTimeout, setInterval, scroll, open/close', 'What are some of the more useful methods of the window object?', NULL, NULL),
(108, 'moveTo(), resizeTo()', 'How would you change the window object size and position?', NULL, NULL),
(109, 'setTimeout evaluates a function once after a period of time, while setInterval calls repeatedly at a set time-spacing until cancelled.', 'What is the difference between setTimeout and setInterval?', NULL, NULL),
(110, 'document.forms, document.images, document.links', 'For which DOM elements does JavaScript naturally create arrays for?', NULL, NULL),
(111, 'When inside of a <pre> tag.', 'When does writeln() append a line break?', NULL, NULL),
(112, 'document.forms[0].element[0] or document.forms["formId"].element["buttonId"] or document["formId"]["buttonId"]', 'Name 3 ways to use the default DOM arrays to get an input?', NULL, NULL),
(113, 'onSubmit event handler on form, or onClick handler on submit button.  If bad input if found, return false to cancel submission.', 'What are the two event handlers to catch a form before submission, and what if input is invalid?', NULL, NULL),
(114, 'onReset event handler in form element.', 'How do you warn a user before resetting a form?', NULL, NULL),
(115, 'onSubmit = "return (function())"', 'What is the syntax for onSubmit/onReset on a form?', NULL, NULL),
(116, 'form.submit() and form.reset().  These don''t fire their respective event handlers (onSubmit, onReset)', 'What are the two built in form methods?', NULL, NULL),
(117, 'href ="#" or href="JavaScript: void(0)"', 'How do you deactivate a <a> element?', NULL, NULL),
(118, 'form.select()', 'How do you highlight all text on a form element?', NULL, NULL),
(119, 'element.watch(run on changed);', 'How do you call a function when a property is changed?', NULL, NULL),
(120, 'document.forms.select.options(select.selectedIndex).value', 'How do you find the current choice in a dropdown menu, then access it''s value?', NULL, NULL),
(121, 'select.size = 5;', 'How do you set how many rows are visible in a dropdown menu?', NULL, NULL),
(122, 'onSubmit = "return checkForm()", or onClick for button and manually call submit, or onClick directly on input of type submit', 'How do you call a function to validate a submission?', NULL, NULL),
(123, 'if(text.value.indexOf("A") != -1){..}', 'How do you find if a particular character is in a string?', NULL, NULL),
(124, 'var image = new Image(200,300); image.src = "...png"; Place in the head element if possible.', 'How can you preload images for faster viewing?', NULL, NULL),
(125, 'inline, scripting, DOM', 'What are the 3 event models for programming events?', NULL, NULL),
(126, 'Registering an event.', 'What is a another name for assigning a function to an event handler?', NULL, NULL),
(127, 'button.click(), form.submit()', 'How do you simulate events with events methods?', NULL, NULL),
(128, 'onResize()', 'What event can be used when the user changes the window size?', NULL, NULL),
(129, 'onSelect', 'Event that fires when a user highlights text within a text-based input?', NULL, NULL),
(130, 'input.form', 'How do you access an input ''s parent form?', NULL, NULL),
(131, 'Pass it to JavaScript. onClick = "myFunc(event)", or in IE window.event which is global.', 'How do you access the event object?', NULL, NULL),
(132, 'window.onload, button.onclick', 'How do you control events through the DOM objects?', NULL, NULL),
(133, '.onload = myFunc(); function myFunc(){ oneFunction(); otherFunction();}  To clear: onload = null;', 'How do you assign multiple event functions and clear them?', NULL, NULL),
(134, 'document.stylesheets[0].disabled = true;', 'How do you access and disable a stylesheet?', NULL, NULL),
(135, 'document.stylesheet[1].cssRules[1].style.color = blue;', 'How do you change css styles through the DOM?', NULL, NULL),
(136, 'css: font-size DOM: style.fontsize', 'What is the difference between spelling when accessing CSS styles through the stylesheet vs the DOM?', NULL, NULL),
(137, '.className += " myClass, anotherClass";', 'How do you add a CSS class to exiting classes on objects, how about multiples?', NULL, NULL),
(138, 'node', 'What is the base element within the DOM tree?', NULL, NULL),
(139, '<html>', 'What is the top-level root node of the DOM tree?', NULL, NULL),
(140, 'leaf node', 'What is the name of the last node of the DOM, where part of the tree-like structure terminates?', NULL, NULL),
(141, 'element, attrubute, text', 'What are the three types of nodes?', NULL, NULL),
(142, '.nodeName, .nodeType', 'How do you find the name and the type of a node?', NULL, NULL),
(143, 'New content may break node arrangement', 'What is the biggest downfall of traveling the DOM through nodes?', NULL, NULL),
(144, 'parentNode, firstChild, lastChild, previousSibling, nextSibling', 'What are the five properties for each node in the DOM tree?', NULL, NULL),
(145, 'appendChild(newNode)', 'How do you append a node at the end of a child list?', NULL, NULL),
(146, '.hasChildNodes();', 'How do you find if a node has any children?', NULL, NULL),
(147, 'node.getAttribute(attributeName);', 'How do you check the value of an attribute of a node?', NULL, NULL),
(148, 'insertNode(newNode, currentNode)', 'How do you insert a node at a specific spot?', NULL, NULL),
(149, 'removeNode(childNode)', 'How do you remove a child node?', NULL, NULL),
(150, '.setAttributeNode(attribute reference)', 'How do you set or create and attribute for the current node?', NULL, NULL),
(151, '.innerHtml()', 'What is the easiest method to get or modify content of an element?', NULL, NULL),
(152, 'createElement(), createTextNode()', 'What are the two methods for creating new elements?', NULL, NULL),
(153, 'bubble up', 'What is the default propagation method in DOM lvl 2?', NULL, NULL),
(154, 'See 74%', 'What is the difference between bubbling and capturing?', NULL, NULL),
(155, 'See 69%', 'What is the "white space" bug in node traversal?', NULL, NULL),
(156, 'stopPropagation();', 'What method do you use to stop event bubbling?', NULL, NULL),
(157, 'addEventListener(event, function, bubble?)', 'Using the evnet model, how do you manually add events listeners?', NULL, NULL),
(158, 'The element that fired the event', 'What does "this" refer to while using event handlers?', NULL, NULL),
(159, 'removeEventListener(eventName, function, capture bool) or use element.onclick = null;', 'Using the event model, how do you remove an event handler?', NULL, NULL),
(160, 'Session and persistant', 'What are the two types of cookies?', NULL, NULL),
(161, '20', 'What is the max number of key/pair values a cookie can hold?', NULL, NULL),
(162, 'var test = /expression/options', 'What is the basic format of a literal regular expression?', NULL, NULL),
(163, 'i - ignore case, g - match all instances, m - match over multiple lines', 'What are the 3 options when creating a literal RegExp?', NULL, NULL),
(164, 'var r = new RegExp("expression", "options");', 'What is the format for creating a RegExp object using it''s constructor?', NULL, NULL),
(165, 'regexp.text(string) - true if match, regexp.exec(string) - returns first match', 'What are the two RegExp object methods to match a string?', NULL, NULL),
(166, 'string.replace(" ", "");', 'How do you remove spaces from a string?', NULL, NULL),
(167, 'You can you dot syntax to access to value.  myObject.prop vs myArray["value"]', 'What is an advantage to using an object literal vs an associative array?', NULL, NULL),
(168, 'search(regex)', 'What string method would you use to find the position of the first instance match of a regExp?', NULL, NULL),
(169, 'string.indexOf(subString);', 'What string method would you use to search a string for a substring and return it''s index?', NULL, NULL),
(170, 'array.join(",");', 'How would you join all elements of an array to a string separated by commas?', NULL, NULL),
(171, 'The reason prototyping is better is that the functions defined in the prototype are created only once when the JavaScript is loaded, instead of each time a new object is created.', 'What is the prototyping pattern and why is it better than other methods of object creation?', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jQuery`
--

CREATE TABLE IF NOT EXISTS `jQuery` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Question` text,
  `Answer` text,
  `Hint` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `jQuery`
--

INSERT INTO `jQuery` (`Id`, `Question`, `Answer`, `Hint`) VALUES
(2, 'What is the syntax to change all <p> elements to bold?', '$(''p'').css(''font-weight'', ''bold'');', NULL),
(3, 'How would you set the text of a <p> with id="first"?', '$(''#first'').html(''Hey there'');', NULL),
(4, 'What is chaining?', 'Calling multiple jQuery functions from one selection. Ex: $(''p'').css().html()', NULL),
(5, 'What is the difference between the DOM attributes innerHtml and outerHtml?', 'inner gets access to the text within the tags of the selected element. Outer gets the tags and the contained elements.  Both accept additional or replacement tags.', NULL),
(6, 'What three attributes of a DOM eleement find or manipulate nodes?', '.parentNode, childNodes, and appendChild (sort of)', NULL),
(7, 'How do you view/change the values of a property on a DOM element?', 'getAttribute("attribute"), setAttribute("attribute")', NULL),
(8, 'How do you set the innerHtml of a jQuery object?', '$(''p'').html(''new content'');', NULL),
(9, 'How to get the value of an input element using jQuery?', '$(''#myInput'').val(''test'');', NULL),
(10, 'How would you set the link of a <a> through jQuery?', '$(''#myLink'').attr(''href'', ''newValue'');', NULL),
(11, 'How would you change the a css property, then add a new class?', '$(''#myItem'').css("color", "blue").addClass("myNewClass");', NULL),
(12, 'How do you make elements appear and disappear?', '.hide(), .show()', NULL),
(13, 'How do you check if an object is a jQuery object?', 'if(obj.jQuery){ ... }', NULL),
(14, 'How do you determine if an object is a DOM object?', 'if(obj.nodeType){ ... }', NULL),
(15, 'How do you convert a jQuery object to an array of DOM objects?', 'var domObj = jQueryObj.get();', NULL),
(16, 'How do you take a JavaScrip object and convert to a jQuery object?', 'Wrap the DOM Object is int eh jQuery() method, ex: var jQueryObj = $(domObj);', NULL),
(17, 'How do you use metacharacters in a jQuery selector?', 'Proceed it with two backslashes. Ex: want my.element -> $("my//.element)', NULL),
(18, 'How do you format a selector for multiple html elements?', '$("element, element").', NULL),
(19, 'How do you select and particular type of element with a specific class?', '$("div.myClass")', NULL),
(20, 'How would you select an element, based on an attribute with a certain value?', '$("input[value=0]")', NULL),
(21, 'How would you select and all elements, whose value contains a partial value?', '$(p[class*=pad]") - would grab all <p> elements whose class name contains the word "pad".', NULL),
(22, 'How would you select and element with a attribute value that begins with a particular value?', '$("input[value^=1]")- would grab and input value that begins with one.', NULL),
(23, 'How do you grab a element based on its attribute not being equal to some value?', '$("input[value!=0]")', NULL),
(24, 'How do you select multiple elements based solely on possessing an attribute? ', '$("[src] [alt]")', NULL),
(25, 'How would you select all div elements that have the text "Default" within them?', '$("div:contains(''Default'')") - called a content selector', NULL),
(26, 'How would you select all elements that have a <p> as a child element?', '$(":has(p)")', NULL),
(27, 'How would you select all <div> elements that have no content?', '$("div:empty")', NULL),
(28, 'How would you select all <div> elements that have some kind of content?', '$("div:parent")', NULL),
(29, 'How to select an element that has a specific ancestor element?', '$("div span") - and span that is contained within a div, at any level.', NULL),
(30, 'How do you find a element that has a specific parent element?', '$("div > span") - Finds all span elements that have a div as an immediate parent.', NULL),
(31, 'Select a <p> elements that is immediately followed by a <span> element?', '$("p + span")', NULL),
(32, 'Select all <div> elements that are siblings of a element with id="sample", and appear after the element withe the id.', '$("#sample - div") - on same level and after it.', NULL),
(33, 'How would you select all inputs that are in a checked state?', '$("input:checked");', NULL),
(34, 'How would you grab all options in a select input that are currently selected?', '$("option:selected")', NULL),
(35, 'How would you select all elements that are current focused on a form?', '$(":focus")', NULL),
(36, 'Select all inputs that are currently enabled?', '$("input:enabled")', NULL),
(37, 'How would you select elements based on whether they are visible or not?', '$("div:visible"), or $("div:hidden")', NULL),
(38, 'How would you filter out all even or even elements in a selection?', '$("div:even"), $("div:odd")', NULL),
(39, 'How would you select only the first orf last of all div elements?', '$("div:first"), $("div:last")', NULL),
(40, 'How would you select all h values(h1,h2, etc)?', '$(":header")', NULL),
(41, 'How would you select an elements based on it index, say the 5 div on a page?', '$("div:eq(4)"), zero based indexing', NULL),
(42, 'How would you grab all div elements after the 4th element on a page?', '$("div:gt(3)")', NULL),
(43, 'How would you grab all div elements before the others, say all divs before the 4th one?', '$("div:lt(3)")', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `JsRegExp`
--

CREATE TABLE IF NOT EXISTS `JsRegExp` (
  `Question` text,
  `CategoryId` int(11) DEFAULT NULL,
  `Answer` text,
  `Hint` text,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`),
  KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `JsRegExp`
--

INSERT INTO `JsRegExp` (`Question`, `CategoryId`, `Answer`, `Hint`, `Id`) VALUES
('What is the basic format for a literal regular expression?', 0, 'var test = /RegExp/option', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Php`
--

CREATE TABLE IF NOT EXISTS `Php` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Question` text,
  `Answer` text,
  `Hint` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `Php`
--

INSERT INTO `Php` (`Id`, `Question`, `Answer`, `Hint`) VALUES
(1, 'What does PHP stand for, and what did it originally stand for?', 'HyperText Preprocessor, originally it was Personal Home Page.', ''),
(2, 'What does URL stand for?', 'Uniform Resource Locator', ''),
(3, 'What is the main limitation of PHP?', 'Cannot be used for client side feaures, since all processing is done on the server.', ''),
(4, 'What is one main advantage of using PHP vs using say, Asp.net?', 'PHP is cross-platform and works on Unix, Windows, Macintosh and other operating systems.', ''),
(5, 'What are the primary alternatives to PHP?', 'CGI Scripts (Common Gateway Interface - often using Perl), ASP.NET, Adobe Coldfusion, JSP (JavaServer Pages, and Ruby on Rails.', ''),
(6, 'What is the central difference between using PHP and straight Html?', 'PHP does everything on the server and then sends the right data to the browser.  ', ''),
(7, 'What tags must be used for using PHP?', '<?php   ..content.. ?>', ''),
(8, 'What is UTF, and what does it mean.?', 'It stands for Unicode Transformation Format.  It is a reliable method for representing every symbol in every alphabet.', ''),
(9, 'How do you get a table of data showing specifics of the PHP installation on the server?', 'phpinfo()', ''),
(10, 'Does PHP support short tags?', 'Yes (<? ?>), but there are not recommended and are being dropped from the language.', ''),
(11, 'What are the 3 methods for sending text to the browser?', 'print, printf, and echo', ''),
(13, 'What is one way to use quotation marks within a print statement?', 'use an escape character before the marks.  Ex: print"Title=\\"Mad Max\\"";', ''),
(14, 'What are the 3 methods for making comments in PHP?', '// or # for single line, /* for multi line comments.', ''),
(15, 'How to see if errors are set to be displayed?', 'phpinfo(), then look for display_errors setting', ''),
(16, 'What are 3 basic debugging methods?', 'Make sure you are running through a URL, make sure display_errors is enabled, know your PHP version, check the html source code.', ''),
(17, 'What scope do PHP variables have?', 'Generally they only live as long as the PHP is being processed on the server.  Once the closing PHP tags are hit, most variables are lost.', ''),
(18, 'What is a predefined variable that provides information about the computer the server is running on?', '$_SERVER', ''),
(19, 'What are 3 ways to print a variable?', 'print_r($var) or print("With text $var") or print $var', ''),
(20, 'How do you make printing of variables more readable?', 'Encase it in <pre> tags', ''),
(21, 'What are the 4 main variable types?', 'Number, String, Array, Object', ''),
(22, 'What is the value of "10" + 10?', '20, strings will be converted if added to numbers.', ''),
(23, 'What are the 2 types of arrays in PHP?', 'Associative and Indexed Arrays', ''),
(24, 'How do you print non-scalar variable types?', 'print_r(array)', ''),
(25, 'What are the most common reasons for a parse error message?', 'Usually caused by missing semicolons or an imbalance of quotation marks or parentheses.', ''),
(26, 'What is significant about using single quotation marks versus double?', 'Singles are treated literally, while doubles are converted.  So if a variable name appears in a double quoted string, it will be replaced with it''s value.', ''),
(27, 'When should you use single quotations marks in assignments and print statements?', 'Whenever you can, they are faster than using double quotes which evaluated everything contained to check for conversions.', ''),
(28, 'What should you do if your shortcuts for newlines, tabs, etc is not working right?', 'Make sure you are using double quotes instead of single quotes.', ''),
(29, 'How does bookmarking work when sending data with GET vs POST?', 'Get can be bookmarked and post cannot.', ''),
(30, 'When is GET normally used, and when is POST normally used?', 'GET is for smaller amount of non-secure information, use when asking for data from the server.  POST can send a lot of secure data, and is normally used to trigger a server-based action.  ', ''),
(31, 'What are magic quotes?', 'A depreciated feature that automatically escapes single and double quotations marks found in submitted form data.', ''),
(32, 'How do you convert POST data impacted by magic quotes?', 'stripslashes($_POST[''something''])', ''),
(33, 'How do you pass information to the server hidden from the user?', 'Use a hidden type input element.', ''),
(34, 'What is the problem with display errors?', 'It provides too much data, and should never be left on once debugging is no longer needed.', ''),
(35, 'How can you display errors if you don''t have admin access to the PHP server?', 'Include the line ini_set(''display_errors, 1); at the beginning of your code.', ''),
(36, 'How do you enable error reporting?', 'error_reporting(E_ALL | E_STRICT)', ''),
(37, 'How do you pass data directly to another page, without using a form?', 'Use a link and create the appropriate address. ...href="page.php?id=22.  This will pass id of 22 to page.php.', ''),
(38, 'What are different ways to round numbers?', 'round($var), floor($var), ceil($var), number_format($var, 2)', ''),
(39, 'How do you round a number and format it to 2 decimal places?', 'number_format(4.235, 2) = 4.24', ''),
(40, 'What is the problem with the round function?', 'Half values (.5, .05) get rounded up half the time, and round down the other half, so not always reliable.', ''),
(41, 'How do you create a random number between 0 and 10?', 'rand(0,10), or mt_rand(0,10) - mt version is 4 times faster and produces better number.', ''),
(42, 'How do you combine two strings?', '$var1 . $var2', ''),
(43, 'How do you convert HTML tags to their entity version, vice versa, remove them all?', 'htmlspecialchars(), htmlentities(), strip_tags()', ''),
(44, 'Two reasons to watch from special tags in user-provided data.', 'Submitted HTML could affect rendering of the page (adding formatting, altering CSS), and because the user can submit malicious JavaScript that would be executed.', ''),
(45, 'How do you turn HTML entities into their respective HTML code?', 'html_entity_decode()', ''),
(46, 'When do you need to encode and decode variables, and what functions do you use?', 'If passing data via a link, and not using a form the data needs to be manually encoded/decoded using urlencode() before sending and urldecode() on arrival.', ''),
(47, 'What method provides one way encryption, and how would you use it?', 'Use crypt($password) to encrypt data, it cannot be reversed so compare saved encrypted version to new encrypted version on login.', ''),
(48, 'What are two methods for comparing string values?', 'strcmp() and strnatcmp(), they both return a number.', ''),
(49, 'What are the two case insensitive methods to compare string values?', 'strcasecmp() and strnatcasecmp()', ''),
(50, 'How do you search a string for another string, and what is returned?  What is the case-insensitive version?', 'Use strstr(toSearch, find, boolean(opt)), with the boolean returning false if nothing is found. stristr()', ''),
(51, 'How do you search for a string within another string and return it''s numeric position? What is the case-insensitive version?', 'strpos(search, find, begin), stripos()', ''),
(52, 'How do you split up a string using a delimiter, but stop once a condition is met?', 'Use strlok(string, delimiter).  Future calls on same string use strlok(delimiter).  More control than explode.', ''),
(53, 'How do you split a string based on a starting index, and a range of characters?', 'Use substr(string, start, range).  Ex: substr(string, 0, 10).', ''),
(54, 'How do you find how many characters are in a string? How many words?', 'strlen(string) and str_word_count(string)', ''),
(55, 'How do you turn the first letter of the first word in a  string uppercase?  Of each word?', 'ucfirst() and ucwords()', ''),
(56, 'How do you make an entire string uppercase or lowercase?', 'strtoupper() and strtolower()', ''),
(57, 'How do you replace elements within a string? Ignore case?', 'str_replace(toReplace, replacement, fullString), use str_ireplace', ''),
(58, 'How do you remove spaces, tabs, and newlines from the beginning and end of a string? Just the beginning or the end?', 'trim(string), ltrim(string) and rtrim(string)', ''),
(59, 'How to determine if a string has no value, a value of 0, or a value of false?', 'empty(), usually used to see if a text or textarea input has a value', ''),
(60, 'How do you check if an input has any kind of value, including an empty string?', 'isset(), usually used to see if notext elements have a value', ''),
(61, 'How do you check if a submitted variable is a number?', 'is_numeric()', ''),
(62, 'What are the three most useful form validation functions?', 'isset(), is_numeric(), empty()', ''),
(63, 'How do you verify that a submitted value exists before working with it?', 'if(isset($var)){ ... }', ''),
(64, 'How can you check if multiple values exist before working with them?', 'isset($var, $var1, $var2)', ''),
(65, 'How do you make sure a date value is possible and valid?', 'checkdate($month, $day, $year)', ''),
(66, 'What is a good habit for when comparing two strings?', 'Apply trim() to strings to eliminate errant spaces.', ''),
(67, 'What is another method to verify a text input has been filled out, other than using empty()?', 'if(strlen($var) > 0){ .. }', ''),
(68, 'What is a use for using reverse conditional statements?', 'To avoid errors when missing an equals sign in conditionals Ex: if($var == 5) vs. if($var = 5) (ALWAYS TRUE)', ''),
(69, 'What are some variable values that evaluate to false?', '0, empty string, and false(obv)', ''),
(70, 'What are the alternative, and more potent, versions of break?', 'exit and die, which terminate the php script, including and html sent to the browser', ''),
(71, 'What are the three types of loops supported by php?', 'for, while, foreach', ''),
(72, 'What are some of the superglobal arrays?', '$_SERVER, $_GET, $_POST, $_COOKIE, $_COOKIE, $_SESSION, $_ENV, etc', ''),
(73, 'What is the syntax for creating an array?', '$list = array(''apples'', ''oranges'', ''pears'');', ''),
(74, 'What is the syntax for creating an array and defining index values?', '$list = array(1 => ''apple'', 2 => ''orange'')', ''),
(75, 'What is the best way to print and array?', 'print_r(array);', ''),
(76, 'What is the shorthand for establishing a array index, and letting the other ones generate automatically?', '$list = array(1 => ''apple'', ''banana'', ''orange).  The others will follow sequentially.', ''),
(77, 'How do you create an array based on a range of values?', '$array = range(1,10); Makes an array of values from 1 to 10.', ''),
(78, 'What is a method to print an array showing it''s contents and it''s structure in detailed format?', 'var_dump(array);', ''),
(79, 'How do you add values to an array at the end? How to add at a specific index?', '$array[] = ''pears''; $array[3] = ''pears'';', ''),
(80, 'How do you remove an element from an array?', 'unset($array[4]);', ''),
(81, 'What are two methods to delete a whole array?', 'unset($array) or $array = array()', ''),
(82, 'How do you determine how many elements are in an array?', '$how_many = count($array) or sizeof($array)', ''),
(83, 'What are two methods to combine arrays?', 'array_merge($array1, $array2) or $newArray = $array1 + $array2', ''),
(84, 'When printing single associative array values, using print will cause conflicts, what can you do to combat this?', 'Wrap it is curly brackets print"<p> {$soups[''Monday'']} </p>";', ''),
(85, 'What is the syntax for looping through an array using a foreach statement,assessing its keys and values?', 'foreach($array as $key => $value), ', ''),
(86, 'What is the syntax for using a foreach loop on an array when you only need the values?', 'foreach($array as $value)', ''),
(87, 'How do you use a for loop to access all array elements?', 'for($x = 0; $x < count($array); $x++)', ''),
(88, 'Assuming you already have two arrays, how do you make a multi-dimensional array from them?', '$multArray = array($firstArray => $array1, $secondArray => $array2)', ''),
(89, 'In a multi-dimensional array how would you access the second value of a key named $secondArray?', '$multiArray[$secondArray][1]', ''),
(90, 'When using print_r or $var_dump() on an array, what can you do to improve the formatting?', 'Wrap it in <pre> tags.', ''),
(91, 'How do you sort an array based only on values, and its reverse method?', 'sort($array) and rsort($array). The keys will change for all values.', ''),
(92, 'How do you sort and reverse sort an array, while maintaining key values?', 'asort($array) and arsort($array)', ''),
(93, 'How do you sort and array by it''s keys, and in reverse?', 'ksort() and krsort()', ''),
(94, 'How do you randomize and array?', 'shuffle($array)', ''),
(95, 'How do you sort an array using it''s natural order, ex: score2 before score12?', 'Use natsort() and natcasesort()', ''),
(96, 'How do you sort and array based on a user-defined comparison?', 'usort(), uasort() and ursort()', ''),
(97, 'How do you turn an array into a string, with each element separated by a comma and a space?', 'implode(", ", $array) or join(" " ,$array)', ''),
(98, 'How do you turn a string of multiple words into an array?', 'explode(" ". $string);', ''),
(99, 'How would you take multiple available options (radio, checkbox, etc) and pass them as an array?', 'Assign the name to each element as an array. Ex: <input name="days[]"..>.  This will get passed to POST or GET arrays as an array value days[].', ''),
(100, 'How do you check is a value is an array?', 'is_array()', ''),
(101, 'How do you quickly assign array values to individual variables?', 'list($value1, $value2, $value3) = $array; So $value1 will become array[0] etc. Often used when getting values from a database.', ''),
(102, 'How do you check if a specific key is in an array?', 'array_key_exists($key, $array)', ''),
(103, 'How do you search through an array to find the key associated with a value?', 'array_search($value, $array)', ''),
(104, 'How do you search an array for a specific value?', 'in_array($value, $array)', ''),
(105, 'how do you incorporate another file directly into another file?', 'include(''file.php'') or require(''file.php'')', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Css`
--
ALTER TABLE `Css`
  ADD CONSTRAINT `Css_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `Category` (`Id`);

--
-- Constraints for table `Html5`
--
ALTER TABLE `Html5`
  ADD CONSTRAINT `Html5_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `Category` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
