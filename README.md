# conda-install-bears

This is a prototype to install coala bears in all the platforms using conda as the package manager.

## Sources and further discussion

The current installation scripts depend on existing package managers.
- Chocolatey (for Windows)
- Brew (for Mac OS)
- APT (for Linux)

The installation for Windows and Mac is quite straightforward and it can be incorporated in DistributionRequirement. But for Linux, it seems we need a conda package which does the installation for us and the installation is *not* straightforward with APT.

So, the design for installation of such dependencies should be further discussed.

## References

https://conda.io/docs/build_tutorials/pkgs2.html
