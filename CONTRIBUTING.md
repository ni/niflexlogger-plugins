# Contributing to *niflexlogger-plugins* 

Contributions to *niflexlogger-plugins* are welcome from all!

*niflexlogger-plugins* is managed via [git](https://git-scm.com), with the canonical upstream
repository hosted on [GitHub](https://github.com/ni/niflexlogger-plugins).

*niflexlogger-plugins* follows a [fork-and-pull model](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/getting-started/about-collaborative-development-models#fork-and-pull-model) for contributions.  If you wish to
contribute, you will need to create a GitHub account, fork this project, push a
branch with your changes to your project, and then submit a pull request.

See [GitHub's official documentation](https://help.github.com/articles/using-pull-requests/) for more details.

# Getting Started

To contribute to this project, it is recommended that you follow these steps:

1. Install [Git](https://git-scm.com/downloads) on your machine if you don't already have it. The following steps are using a basic cmd window, but other applications can be used to interact with git like MSVC, Git GUI, Sourcetree, GitDesktop, etc.
2. Go to the [niflexlogger-plugins GitHub page](https://github.com/ni/niflexlogger-plugins). Click the **Fork** button in the top-right corner of the page. This creates a copy of the repository under your GitHub account. You can now create branches freely in your fork and later submit a pull request to the original repository.
3. Open a cmd window and navigate to the local drive where you want to copy the FlexLogger Plugin repo. For example (create folder if needed): > cd c:\GitDev
4. Clone your fork niflexlogger-plugins repo to your local drive:

```bash
git clone https://github.com/<your-username>/niflexlogger-plugins.git
``` 
5. Navigate inside the copied folder:

```bash
cd niflexlogger-plugins
```
6. Create your own branch of the repo:

```bash
 git branch "your_branch_name"
```
7. Switch to this new branch:

```bash
 git checkout "your_branch_name"
```
8. Copy the Template folder in the **plugins** directory and rename it to match your plug-in.
9. Copy your built plug-in in the **build folder**. The built plug-in is usually found at **C:\Users\Public\Documents\National Instruments\FlexLogger\Plugins\IOPlugins**
10. If you wish to share the source code of your plug-in, copy it in the **source folder**. The plug-in source is typically found at **C:\Users\<username>\Documents\LabVIEW Projects\FlexLogger IO Plug-ins**. If you don't want to share the source, you can delete the source folder.
11. Modify the LICENSE and README.md file to provide details about what your plug-in does and how to use it. Pictures can be very helpful. See other plugins from this repo for how to accomplish this like the Spectrogram or Test Sequencer.
12. Add all the modified files to the commit using this command:

```bash
 git add -A
 ```

13. Commit your changes locally:

```bash
git commit -m "Initial commit comments"
```

14. Push your changes to GitHub: **git push --set-upstream origin "your_branch_name"**
15. Now you can view your fork changes in the GitHub web page to make sure everything looks as you expect. From the [main page](https://github.com/ni/niflexlogger-plugins/tree/main) click **Compare & pull request**.
16. Navigate to the README.md in your plugin and verify everything looks good. You can edit the README.md file from the web page and commit changes from the web page.
17. For any additional changes that need to pushed to GitHub, call these commands:

```bash
 git add -A
 git commit -m "Useful comment about change"
 git push
 ```

18. Once the code is ready for review, go to the [main page](https://github.com/ni/niflexlogger-plugins/tree/main) and click on the "Compare & pull request" green button at the top for your branch.
19. Fill out the description and click **Create pull request**.
20. Add a reviewer on the right and a FlexLogger developer will review it. Once any review feedback has been addressed, and it's approved, your changes will be merged.


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