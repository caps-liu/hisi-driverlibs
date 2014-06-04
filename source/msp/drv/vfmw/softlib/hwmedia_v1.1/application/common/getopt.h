
#ifndef GETOPT_H
#define GETOPT_H

#ifdef __cplusplus
extern "C" {
#endif

extern char *optarg;
extern int optreset;
extern int optind;
extern int opterr;
extern int optopt;

int getopt(int argc, char* const *argv, const char *optstr);

#ifdef __cplusplus
}
#endif

#endif /* GETOPT_H */
