# Contributing to *niflexlogger-plugins* 

Contributions to *niflexlogger-plugins* are welcome from all!

*niflexlogger-plugins* is managed via [git](https://git-scm.com), with the canonical upstream
repository hosted on [GitHub](https://github.com/ni/niflexlogger-plugins).

*niflexlogger-plugins* follows a pull-request model for contributions.  If you wish to
contribute, you will need to create a GitHub account, fork this project, push a
branch with your changes to your project, and then submit a pull request.

See [GitHub's official documentation](https://help.github.com/articles/using-pull-requests/) for more details.

# Getting Started

To contribute to this project, it is recommended that you follow these steps:

1. Install [Git](https://git-scm.com/downloads) on your machine if you don't already have it.
2. Open a cmd window and navigate to the local drive where you want to copy the FlexLogger Plugin repo to. For example:
> cd c:\GitDev
3. Clone the niflexlogger-plugins repo to your local drive: 
> git clone https://github.com/ni/niflexlogger-plugins.git
4. Navigate inside the copied folder:
> cd niflexlogger-plugins
5. Create a your own branch of the repo:
> git branch "your_branch_name"
6. Copy your built plug-in in the build folder. Follow the folder heirarchy of the other examples.
7. If you wish to share the source code of your plug-in, copy it in the source folder.
8. Modify the LICENSE and README.md file to provide details about what your plug-in does and how to use it. Pictures can be very helpful (see other examples for how to accomplish this).
9. Commit your changes locally. This is useful if you ever need to revert to a previous commit. Good idea to do this when you get code in a good state before making new changes that may break things.
> git commit -m "Initial commit comments"
10. Push your changes to GitHub:
> git push
1. Fork the repository on GitHub.
2. Create a new folder in the **plugins** directory for your plug-in, following the folder and
file architecture as the Template folder.
3. Copy your build plug-in in the build folder.
4. If you wish to share the source code of your plug-in, copy it in the source folder.
5. Modify the LICENSE and README.md file.
6. Submit a GitHub Pull Request to the main (default) branch of the upstream repository. GitHub
   Pull Requests are the expected method of code collaboration on this project.

# Developer Certificate of Origin (DCO)

   Developer's Certificate of Origin 1.1

   By making a contribution to this project, I certify that:

   (a) The contribution was created in whole or in part by me and I
       have the right to submit it under the open source license
       indicated in the file; or

   (b) The contribution is based upon previous work that, to the best
       of my knowledge, is covered under an appropriate open source
       license and I have the right under that license to submit that
       work with modifications, whether created in whole or in part
       by me, under the same open source license (unless I am
       permitted to submit under a different license), as indicated
       in the file; or

   (c) The contribution was provided directly to me by some other
       person who certified (a), (b) or (c) and I have not modified
       it.

   (d) I understand and agree that this project and the contribution
       are public and that a record of the contribution (including all
       personal information I submit with it, including my sign-off) is
       maintained indefinitely and may be redistributed consistent with
       this project or the open source license(s) involved.

(taken from [developercertificate.org](https://developercertificate.org/))

Each contributed plug-in is expected to include its own licensing attestation.
If not, the following license will be the default license.

See [LICENSE](https://github.com/ni/niflexlogger-plugins/blob/main/LICENSE)
for details about how *niflexlogger-plugins* is licensed.