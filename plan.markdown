Each entry should have the following format:

    * <text> | <materials>

Material could be directly linked at the corresponding place in the \<text\> in case it is useful only there

    * text text text [text][useful-only-here] text [text][and-here] text | useful everywhere in this line

Do not inline links directly. Place them at the end of the document and link with aliases (see examples below).

# Operating systems

## Introduction to UNIX

* UNIX text editing: vim, Emacs. Using man, searching in man, apropos | man man, "/" key, man apropos
* bash scripting. Syntax. Keyboard combos. | man bash
* IO redirections. Expansion and substitution. | man bash
* Version control management with mercurial and git | man hg, man git
* Standart tools: more, less, ls, cp, mv, rmdir, rm, touch, find, ... | man \*
* User management and access control in UNIXes, file modes. /etc/passwd, /etc/shadow.
* Standart tools: chown, chmod, useradd, usermod, sudo, ... | man \*
* File system hierarchy: /bin /sbin /boot /dev /etc /home /root /lib /var /media /mnt /proc /sys /usr/\* /usr/local/\*. | man hier
* Noninteractive text editing: ed, sed, awk, diff, patch. | man \*
* UNIX history | [wiki][unix-history-wiki] [graph][unix-history-graph].

## OS theory and POSIX

* Operating systems' kernels: micro-, macro-, monolithic, modular. Kernel-to-userspace interfaces: system calls (syscalls), memory, signals.
* Access control: discretionary, mandatory, role-based.
* POSIX access control. Real, effective and saved uid/gids, supplementary gids, setuid bit in file modes.
* Process models: new process from scratch, cloning with inheritance and tuning, exokernel process models.
* POSIX process model: fork, exec. Parent-child relationship. init process. | man \*
* Threads in POSIX and Linux. Process groups and sessions.
* POSIX signals: standard and realtime. Signal delivery and handling.
* POSIX file model: inode, directory entry, VFS, namespace, file descriptor.
* VFS and namespace operations. VFS features in Linux and Plan 9.

## Standart things, formats and daemons

* Hard disk partitioning, MBR. System pre-boot from BIOS to GRUB stage 2.
* Boot from stage 2, kernel startup, initrd, switching root, system init.
* Standart daemons: System V init, at, cron, udev, sshd, getty, ... | man \*
* Standart files in /etc: fstab, mtab, sysctl.conf, issue, nologin, ...

## Licensing and related

* Software licensing: free software and open source. Common licenses.
* Quines. Thompson compiler hack.

## ABI

* ABI. Compilation and linking: COFF, PE, ELF; o[bject]-files, exe[cutable]-files, s[ared]o[bject]-files.
* Building projects under UNIX: config.h, make, autotools, scons, cmake, ...
* Resources: read(2)ing files and etc, mmap(2)ing memory pages.
* The geographical map of virtual memory or "where is the": code, data, heap, stack.
* Doing syscalls with assembler. Kernel syscall dispatch. Context switching.
* CPU caches, cache associativity, virtual memory and caching, TLB.
* Compilation and linking: relocable code, GOT, PIC. Dynamic loading: simple relocation w/o GOT, w/ GOT, caching relocations, PIC.
* Dynamic loading under Windows and Linux. Lazy dynamic loading. Subtle differences between exe- and so- linking under Linux.
* libdl and LD\_PRELOAD.
* Debugging programs with gdb. Stepping lazy dynamically loaded programs.

## Programming with POSIX

* POSIX process control and signaling. System calls: fork, exec, kill, signal, sigaction.
* Syscalls that are ok to call from signal handlers. Syscall interruption and restarting.
* Access control with syscalls: set(|r|e)uid, set(|r|e)gid, setre(u|g)id, setres(u|g)id. Capabilities.
* High level access control with PAM.

* POSIX synchronous IO API: open, read, write, close, pipe, named pipe with mknod.
* File control. Syncing, locking, leasing, duplicating, ...: fsync, fdatasync, fcntl, flock, dup, dup2.
* File descriptor flags and options. Kernel structures behind the file descriptor table.
* O\_NONBLOCK IO and POSIX AIO.

* Memory management. Doing malloc(3) with mmap(2). Memory allocators: SLAB, Hoard.

* IP networking. Kernel route table, IP filter. Network configuration for glibc: /etc/nsswitch.conf /etc/resolv.conf /etc/services.
* BSD sockets. Ideas behind and resulting implementation idiosyncrasies. Common creation patterns and usage.
* glibc networking API. Name resolving, service queries, ...
* IO multiplexing: select, poll. Classical handling, synchronous interface to asynchronous IO with continuations (co-routines). Bandwidth throttling.
* Linux epoll and inotify, BSD kqueue, Linux NETLINK, TX-ring.
* Push and pull data processing models. Throughput versus latency.

* Threads and synchronisation: clone(2), pthreads, shared memory, message queues, symaphores, synchronisation with file locks.
* Debugging programs with ptrace (without details).

## Back to the theory

* Process scheduling: basic, multi-rate, cooperative, priority FIFO, pre-emptive, priority proportional, deadline.
* Linux process scheduler, process states. O(1) rescheduling (resched).
* Special schedulers: FIFO, OTHER, BATCH.
* Realtime scheduling: hi/low interrupts and preemption, process context preemption, kernel process preemption, (magic) scheduler preemption.
* Artifacts: priority fluctuation with O(1) resched, priority inversion.
* IO scheduling: noop, single queue, elevator, multiqueue. Linux: anticipatory, deadline, CFQ.
* Artifacts: priority inversion.

* File systems (detailed): tmpfs, FAT, ext2.
* Journaling. Journaling in ext3: journal, ordered, writeback.
* Data structures used: groups and tables, B-trees, dancing trees. Log-structured file system.
* Block and extent allocation, multiroot, snapshots, object-level RAID, transactions (and why they are not that easy in POSIX).
* File systems (main features only): ext3/4, raiser 3/4, XFS, btrfs, iso9660, squashfs.
* Device mapper, software RAIDs with mdadm, logical volume management with LVM.
* Network volumes: nbd. Network file systems: NFS, sshfs, 9P.
* Cluster file systems and volumes: Redhat GFS 1/2, Clustered LVM. Cluster management: synchronisation, fencing.
* Distributed filesystems: Google GFS, git.
* Linux FUSE interface.

## Good to know about

* Audio API: Alsa, OSS, JACK.
* Marshalling between languages.
* Dbus, X11.
* Efficient system startup. Beyond System V init: upstart, systemd.

  [unix-history-wiki]: http://en.wikipedia.org/wiki/Unix#History
  [unix-history-graph]: http://www.levenez.com/unix/unix_a4.pdf
