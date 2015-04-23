# create a "vman" command which opens a manpage via vim
function vman()
{
  vim +"Man $@" +:only +":set ro"
}

