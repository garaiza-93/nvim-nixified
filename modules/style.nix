let
  shortcutOpts = {
    position = "center";
    align_shortcut = "right";
    hl_shortcut = "RainbowDelimiterBlue";
    width = 40;
  };
in {
  colorschemes.tokyonight = {
    enable = true;
    settings.style = "night";
  };

  plugins.alpha = {
    enable = true;
    layout = [
      {
        type = "padding";
        val = 2;
      }
      {
        type = "text";
        opts = {
          hl = "Identifier";
          position = "center";
        };
        val = [
          "⠀⠀⠀⠀⢀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠁⠁⠄⡀⠢⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠁⠄⠂⡐⢐⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠁⠄⠂⡈⠢⡀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠁⠄⠂⡑⢄⠂⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⠀⢂⠑⢄⠂⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠠⠐⡀⠑⢔⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⡀⢀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢀⠡⢀⠑⢄⠂⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠄⠔⠐⡁⠡⢁⠨⠀⢂⠐⡀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⡂⠠⠑⢄⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠂⠡⠐⡀⠅⠂⡐⢈⠠⠀⠅⡀⢂⠠⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢀⠡⠀⠂⠡⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠈⠄⡀⠂⠄⠡⠀⠂⠄⠡⠐⢀⠂⠠⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡈⠐⡈⠀⢂⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠄⠄⠄⠂⠄⠂⡐⠀⠄⠀⠁⠄⠂⢈⠠⠁⠌⠐⢈⠐⠠⠈⠄⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⢀⠅⠂⠠⢁⠂⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⡉⠄⠂⢂⠨⠐⠈⠄⠠⢁⠨⠀⠄⠈⡐⠀⠐⠈⠠⠈⠄⠂⡁⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠄⠠⠨⠐⡀⢂⠠⠀⠀⠀⠀⠀⠀⠀⡠⠃⡐⠀⡂⠡⠀⢂⠨⢀⠁⡂⠐⡀⠡⠈⠠⠀⢂⠈⠄⠡⢈⠠⠁⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢁⠊⠀⠄⠀⠂⡁⡂⠄⡀⠀⠐⠀⡂⠄⠡⠀⢂⠡⠀⡂⠄⢂⠠⠁⢀⠂⡈⠄⠡⠀⢂⠁⢂⠐⠠⠈⠄⠀⠀⠠⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⢀⢁⠂⠄⠂⡐⢀⠁⡂⠀⡐⢀⠡⢈⠠⠀⠅⡀⠂⠐⡀⢐⠀⢂⠐⡀⠡⠈⠄⡈⠄⠂⡁⠂⡁⠀⠀⠀⠀⠀⠠⠀⠂⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠨⢀⠡⠀⠂⡐⢀⠂⢐⠀⠂⠄⠂⠡⠐⢀⢁⠡⠐⡀⠌⠠⠐⢀⠂⠡⠐⠀⠂⠡⠀⡡⡆⠀⠀⠀⠀⠀⠀⠀⠨⠀⠄⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠁⠀⡂⠈⠄⡀⠂⡀⢂⠈⠄⠡⠈⠄⠡⠠⠀⡂⠐⡀⠂⡁⠌⠀⡐⠐⡀⢂⠠⠀⠊⠎⢞⠄⠀⠀⠀⠀⢀⠈⠄⡁⠌⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠄⠊⠀⠀⠀⠀⡁⠄⠐⡀⢂⠡⢈⠂⡁⠂⠁⠀⠂⠁⠀⠁⠀⡁⠄⠂⡁⢐⠀⠂⠄⢂⠈⠄⢂⠠⠁⡀⢀⠠⠐⢀⠂⡐⠀⠅⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠁⠀⠈⠠⠐⢀⠀⠅⠠⠈⠄⠐⠠⠐⠀⠂⠀⢀⣶⣶⣶⠖⠋⢀⠐⡀⠂⡁⢐⠀⠌⠠⠁⠄⢂⠈⠄⠠⠁⠄⠂⡐⢈⠠⠐⢀⠁⠅⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠂⠀⠈⠀⠁⠈⠈⡀⠀⠀⠐⠚⠛⠛⠛⠁⠀⠀⠂⡐⡀⠡⠐⢀⠂⡈⠄⠁⠂⠐⠀⡁⠄⡁⢂⠁⠄⠂⡐⢈⠀⡂⢑⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⢀⠀⡂⠄⢁⠂⢂⠠⠀⠄⢀⠂⡁⡁⠅⠂⢌⢐⠡⢀⠂⠀⠀⠀⡐⢀⠡⠀⠂⠄⠂⡐⠈⠄⠐⡀⠂⠄⠂⠄⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠅⡀⠂⠐⠀⠂⠈⠄⢂⠐⡀⠡⠈⠄⡂⢂⠄⠂⠡⠐⠠⠈⠄⢀⠠⠀⠅⡀⢂⠀⠡⠈⠄⡁⢐⠈⠄⢁⠐⡈⠠⢁⠨⢀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⡀⡀⡀⡠⡀⡀⠀⠀⠀⠈⠀⠁⡂⡐⠨⠀⠁⢈⢀⠠⠠⠁⡈⠄⠡⠀⢂⠈⠄⡈⠠⠐⠀⠄⠨⠀⢂⠐⡀⢂⠐⠠⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣪⢪⡺⡜⣎⠎⡑⡦⡂⠢⡱⣕⡲⢐⢬⢢⠑⠀⠀⡂⠂⡁⠀⠄⠈⠄⠐⡀⠡⠐⠀⡈⠠⠈⠄⠡⠀⠂⠄⠂⠄⠅⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣪⣣⢳⡱⠃⢔⢸⢪⢝⠄⣇⡗⠠⢊⢮⡣⠃⠀⠀⡢⠡⡀⡂⠄⠂⢀⠁⠐⠈⢀⠔⠁⠁⠡⠨⢀⢁⠡⠈⢠⠊⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢐⢤⡰⡔⡆⢑⢐⢬⢣⡱⢱⢔⢬⠨⢸⣸⠈⡂⠁⠀⠀⠁⠐⠈⠐⡁⠄⡀⠂⠀⠂⠀⠂⠁⡀⠂⠀⠂⠄⠕⠁⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣪⢮⢺⢜⢞⢄⢢⢳⢕⢡⢏⢮⢳⡱⢅⠂⠊⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⢐⠀⡁⢀⠁⡀⢁⠀⠄⠁⠂⠁⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⡳⣣⢳⢕⡳⡹⣜⢬⡸⣸⡱⠝⠜⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠝⡮⡪⣇⢗⢝⡎⣞⢜⢮⠪⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠁⠈⣕⢇⡏⡧⡳⠑⠑⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡐⠀⢰⢣⡳⡹⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢐⠀⢀⡏⡮⡊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠆⠀⡲⡹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠨⠀⢐⠭⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠈⠘⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    "
        ];
      }
      {
        type = "padding";
        val = 2;
      }
      {
        type = "group";
        val = [
          {
            on_press = "vim.cmd('ene')";
            opts = {
              shortcut = "e";
              keymap.__raw =
                ''{"n", "e", "<cmd>lua vim.cmd('ene')<cr>", {noremap=true}}'';
            } // shortcutOpts;
            type = "button";
            val = "  > New file";
          }
          {
            on_press.__raw = "require('telescope.builtin').find_files";
            opts = {
              shortcut = "f";
              keymap.__raw = ''
                {"n", "f", "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap=true}}'';
            } // shortcutOpts;
            type = "button";
            val = "󰭎  > Find file";
          }
          {
            on_press.__raw = "require('telescope.builtin').live_grep";
            opts = {
              shortcut = "g";
              keymap.__raw = ''
                {"n", "g", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap=true}}'';
            } // shortcutOpts;
            type = "button";
            val = "󰭎  > Find Text (grep)";
          }
          {
            on_press.__raw = "require('telescope.builtin').oldfiles";
            opts = {
              shortcut = "r";
              keymap.__raw = ''
                {"n", "r", "<cmd>lua require('telescope.builtin').oldfiles()<cr>", {noremap=true}}'';
            } // shortcutOpts;
            type = "button";
            val = "󰭎  > Recent";
          }
          {
            on_press = "vim.cmd('qa')";
            opts = {
              shortcut = "q";
              keymap.__raw =
                ''{"n", "q", "<cmd>lua vim.cmd('qa')<cr>", {noremap=true}}'';
            } // shortcutOpts;
            type = "button";
            val = "󰩈  > Quit NVIM";
          }
        ];
      }
    ];
  };
}
