#!/usr/bin/env python3
import argparse
import sys
import time
import os

def print_help():
    print("gpm - A simple package manager from Gip-OS.\n")
    print("Usage:")
    print("  gpm <command> [<args>]\n")
    print("Available commands:")
    print("  install <publisher.package>    Install a package from GitHub\n")
    print("Options:")
    print("  --help                         Show this help message and exit")

def main():
    parser = argparse.ArgumentParser(add_help=False)
    parser.add_argument("command", nargs='?', help="Command to run")
    parser.add_argument("arg", nargs='?', help="Optional argument for command")
    parser.add_argument("--help", action="store_true", help="Show help")

    args = parser.parse_args()

    if args.help or not args.command:
        print_help()
        sys.exit(0)

    if args.command == "install":
        if not args.arg:
            print("Error: 'install' requires <author>.<package>")
            sys.exit(1)
        if '.' not in args.arg:
            print("Error: package name must be in format publisher.package")
            sys.exit(1)
        author, package = args.arg.split('.', 1)
        print(f"Installing package '{package}' by author '{author}'...")
        # time.sleep(1) #WTH? 
        print("Working with git and github...")
        os.system(f' git clone https://github.com/{author}/{package}.git ./home/local')
        os.system(f'cp ./bin/{package}/* ./bin/')
        os.system('chmod 775 ./bin/*')
    else:
        print(f"Unknown command: {args.command}")
        print("watch 'gpm --help'")
        sys.exit(1)

if __name__ == "__main__":
    main()

