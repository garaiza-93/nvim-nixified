{
  colorschemes.tokyonight = {
    enable = true;
    style = "night";
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
            on_press.__raw = "vim.cmd('ene')";
            opts.position = "center";
            opts.shortcut = "e";
            opts.width = 22;
            opts.keymap.__raw =
              ''{"n", "e", "<cmd>lua vim.cmd('ene')<cr>", {noremap=true}}'';
            type = "button";
            val = "  > New file";
          }
          {
            on_press.__raw = "require('telescope.builtin').find_files";
            opts.position = "center";
            opts.shortcut = "f";
            opts.width = 22;
            opts.keymap.__raw = ''
              {"n", "f", "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap=true}}'';
            type = "button";
            val = "󰭎  > Find file";
          }
          {
            on_press.__raw = "require('telescope.builtin').live_grep";
            opts.position = "center";
            opts.shortcut = "g";
            opts.width = 22;
            opts.keymap.__raw = ''
              {"n", "g", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap=true}}'';
            type = "button";
            val = "󰭎  > Find Text (grep)";
          }
          {
            on_press.__raw = "require('telescope.builtin').oldfiles";
            opts.position = "center";
            opts.shortcut = "r";
            opts.width = 22;
            opts.keymap.__raw = ''
              {"n", "r", "<cmd>lua require('telescope.builtin').oldfiles()<cr>", {noremap=true}}'';
            type = "button";
            val = "󰭎  > Recent";
          }
          {
            on_press__raw = "vim.cmd('qa')";
            opts.position = "center";
            opts.shortcut = "q";
            opts.width = 22;
            opts.keymap.__raw =
              ''{"n", "q", "<cmd>lua vim.cmd('qa')<cr>", {noremap=true}}'';
            type = "button";
            val = "󰩈  > Quit NVIM";
          }
        ];
      }
    ];
  };
}
