/*
 * Copyright (C) 2017 David Delavennat
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * License, or any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301, USA.
 */

FILE_LICENCE ( GPL2_OR_LATER );

#include <stdio.h>
#include <getopt.h>
#include <ipxe/command.h>
#include <ipxe/parseopt.h>

/** @file
 *
 * lldp command
 *
 */



/** "lldp" options */
struct lldp_options {
  /** send advertisement */
  int advertise;
}

/** "lldp" option list */
static struct option_descriptor lldp_opts[] = {
        OPTION_DESC ( "advertise", 'a', no_argument,
                      struct lldp_options, advertise, parse_flag ),
};

/** "lldp" command descriptor */
static struct command_descriptor lldp_cmd =
        COMMAND_DESC ( struct lldp_options, lldp_opts, 0, 0, NULL );
/**
 * The "lldp" command
 *
 * @v argc           Argument count
 * @v argv           Argument list
 * @ret rc           Return status code
 */
static int lldp_exec ( int argc, char **argv ) {
        struct lldp_options opts;
        const char
        return 0;
}

/** LLDP command */
struct command lldp_command __command = {
        .name = "lldp",
        .exec = lldp_exec,
}
