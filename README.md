# Vizzuality's website

This is the codebase for Vizzuality's company website. 

## Installation

Requirements:

* Node 0.12+ [https://nodejs.org/download](instructions to install)

Install global dependencies:

    npm install -g grunt-cli bower nodemon

Install project dependencies:

    npm install


## Usage

At develop environment, to start:

    grunt serve

To deploy we use Heroku Toolbet [https://toolbelt.heroku.com](instructions to install):

    heroku git:remote -a [project-name] // Only use this command the first time
    grunt deploy


## Project Content. Markdown references

These are all captured in project-template.md, in vizzuality/content/projects/drafts

* **title:** Name of the project. It will be shown big on the main page and little on detail page. _(Global Forest Watch)_
* **short_title:** Short version, if needed, for using on the little boxes of the homepage. Write the same than tittle if there isn’t short version _(GFW)_
* **summary:** Short explanation of the project. It will be used as subtitle on the big cards on the homepage and as a big title on the detail pages _(Half a million people watching forest change)_
* **description** SEO text
* **fb_title** Title to display when the page is shared on Facebook
* **fb_description** Description of the project to display when the page is shared on Facebook
* **link** full URL for the site
* **link_short** remove http etc, this is for the text
* **client** who was it for
* **client_logo** no more than 200x200 and .png, add to app/images/client/. Don't forget to update the file content/clients/logos.yml as well, so it shows up in the footer!
* **svg_logo** is for logos with white background. These should be saved in app/images/client/white
* **post_url** and **post_title** for latest blog entry. Remember to change this when we write new blog posts about projects!
* **image:** Obvious representation of the project for homepage “cards” _(Screenshot of vizzualization)_
* **cover:** Symbolic image for using on the detail page _(A football player)_
* **release_date** is the month/ year it was launched
* ** logoWidth** specifies the width (in px) of the logo(i.e.: logoWidth: 125). This attribute is mandatory.
* **Order and Grid** used to denote the page's place on the home page and the width of the cell _(if in the main group of projects)_. This is now done through through projects.json, in the config folder.
* **Align** is used on main block projects, to align the text on the homepage. Align the text away from the main focus of the image _(left, right or centre)_
* **color** is used to change the colour of the title font on project pages, where cover is very light. "#222" is black


## Staff Contents: Markdown References

These are all captured in staff-template.md, in vizzuality/content/team/drafts

* **name** is self explanatory
* **position** will usually be Designer or Engineer
* **phase** is the inspirational quote at the top of the page
* **twitter** is the twitter handle
* **linkedin** is full URL of linkedin account, wrapped in ""
* **github** is github username
* **email** is their @vizz email address
* **behance** or **dribble** can be used for anyone with a design portfolio on these sites
* **photo** is name of photo (in the team images folder)
* **author and date** is who wrote it, when
* **order** is location in the wall of faces. Any gaps are plugged with images in app/assets/images/office, as described in app/views/about/index.jade
* **published** is either false or true

## Order of Projects

When you add a new project it would be great if you could consult and [update this table](https://docs.google.com/spreadsheets/d/171t8Nkwt80hM3bK_sBKNMjOcrw53c8_n2CecwZL-2OE/edit#gid=702628073). It'll help make sure we're putting the most important projects in the right places!

We also have a tab for the [order of staff as well](https://docs.google.com/spreadsheets/d/171t8Nkwt80hM3bK_sBKNMjOcrw53c8_n2CecwZL-2OE/edit#gid=1805787218)

## Order of Project's Modules (11/05/2015)
From now on, you can modify the order of project's module appearance. In order to do this you have to do two things:

**Add dashes and tabulations.**

You should add dashes for every module you want to add. Be careful and tab properly (see differences in the example). Dashes and tabulations are mandatory.

Example:
    
**_BEFORE_**:

    text_left:
        title: One eye in the sky...
        description: We are losing around 18 million ha of forest every year, according to the latest estimates. With enhanced satellite capabilities and analysis of earth observations, we can monitor changes to our planet more easily than ever before
        image: GFW-high1.png

**_NOW_**:

    -   text_left:
            title: One eye in the sky...
            description: We are losing around 18 million ha of forest every year, according to the latest estimates. With enhanced satellite capabilities and analysis of earth observations, we can monitor changes to our planet more easily than ever before
            image: GFW-high1.png

You should add dashes for every module you want to add. Be careful and tab properly (see differences in the example). Dashes and tabulations are mandatory.

**Every thing in it's place** :bamboo:

The order you choose in the markdown is the order that it will display in the web.

Example:

If you have the next modules in your markdown:
    
    -   text_left: randomContentProperties,
    -   video: randomVideoProperties,
    -   map: randomMapProperties

In the web you will see the next order: text_left, video, map (from top to bottom).

If you still have any doubt, feel free to ask!


## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D


## License

The MIT License (MIT)

Copyright (c) 2015 Vizzuality

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
