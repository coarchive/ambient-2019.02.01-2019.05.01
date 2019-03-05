﻿using System;
using System.Linq;

namespace WExecute {
  class Program {
    static void Main(string[] args) {
      string cwd = System.IO.Directory.GetCurrentDirectory();
      var outArgs = String.Join(" ", args.Select(arg => {
        if (arg.StartsWith("/mnt/c")) {
          return arg.Replace("/mnt/c", "C:").Replace("/", "\\");
        }
        if (arg.StartsWith("./")) {
          return cwd + arg.Substring(1).Replace("/", "\\");
        }
        return arg;
      }).ToArray());
      System.Diagnostics.Process cmd = new System.Diagnostics.Process();
      cmd.StartInfo.FileName = "cmd.exe";
      cmd.StartInfo.UseShellExecute = false;
      cmd.StartInfo.Arguments = "/C" + outArgs;
      cmd.Start();
    }
  }
}
