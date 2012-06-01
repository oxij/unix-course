## How to read this

Entry format:

    * <text> | <materials to read>

"man \*" in the materials means "run

    man <word>

for every word from the \<text\> which looks like a system call."

***Do not read localized (i.e. in languages other than English) manuals*** as they usually have astronomical numbers of errors. You have been warned.

I use the following invocation to get the default version:

    LANG=C man <arguments>

***Each and every*** word in a manual is meaningful. Do not just skip everything that looks hard to parse.

# Operating Systems Course Plan

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
* UNIX history | [unix-history-wiki][], [unix-history-graph][].

## OS Theory and POSIX

* Operating systems' kernels: micro-, macro-, exo-, monolithic, modular. | [micro-kernel-wiki][], [exo-osdev][], [exo-kernel-wiki][], [exo-MIT][], at least abstracts of [exo-MIT-papers][], at least 1.1.1 from [exo-wiseman], at least abstracts of [exo-nemesis-papers][], [monolithic-kernel-wiki][], [TLK-book][]
* Kernel-to-userspace interfaces: system calls (syscalls), memory, signals. | [unix-notes-ru][], [WEPSKAM][], man 7 signal
* Access control: discretionary, mandatory, role-based. | [discretionary-AC-wiki][], [mandatory-AC-wiki][], [role-AC-wiki][], [TCSEC-wiki][], [SELinux-wiki][], [SELinux-FAQ][]
* POSIX access control. Real, effective and saved uid/gids, supplementary gids, setuid bit in file modes. | man 7 credentials
* Process models: new process from scratch, cloning with inheritance and tuning, exokernel process models. | see the first question of this block, see next two questions, see section 3.2 of [exo-nemesis-OSSFDM][]
* POSIX process model: fork, exec. Parent-child relationship. init process. | man \*, man 7 signal
* Threads in POSIX and Linux. Process groups and sessions. | man 7 pthreads, man 2 clone
* POSIX signals: standard and realtime. Signal delivery and handling. | man 7 signal
* POSIX file model: inode, directory entry, VFS, namespace, file descriptor.
* VFS and namespace operations. VFS features in Linux and Plan 9.

## Standart Things, Formats and Daemons

* Hard disk partitioning, MBR. System pre-boot from BIOS to GRUB stage 2.
* Boot from stage 2, kernel startup, initrd, switching root, system init.
* Standart daemons: System V init, at, cron, udev, sshd, getty, ... | man \*
* Standart files in /etc: fstab, mtab, sysctl.conf, issue, nologin, ...

## Licensing and Related

* Software licensing: free software and open source. Common licenses.  | [unix-notes-ru][]
* Quines. Thompson compiler hack. | [unix-notes-ru][]

## ABI

* ABI. Compilation and linking: COFF, PE, ELF; o[bject]-files, exe[cutable]-files, s[ared]o[bject]-files. | [unix-notes-ru][]
* Building projects under UNIX: config.h, make, autotools, scons, cmake, ... | man \*
* Resources: read(2)ing files and etc, mmap(2)ing memory pages. | man \*
* The geographical map of virtual memory or "where is the": code, data, heap, stack.| [unix-notes-ru][]
* Doing syscalls with assembler. Kernel syscall dispatch. Context switching.| [unix-notes-ru][]
* CPU caches, cache associativity, virtual memory and caching, TLB.| [WEPSKAM][], [unix-notes-ru][]
* Compilation and linking: relocable code, GOT, PIC. Dynamic loading: simple relocation w/o GOT, w/ GOT, caching relocations, PIC. | [unix-notes-ru][]
* Dynamic loading under Windows and Linux. Lazy dynamic loading. Subtle differences between exe- and so- linking under Linux. | man ld-linux, [unix-notes-ru][], [link-DLILAW1][], [link-DLILAW2][], [link-drepper][], [link-sorry-state][]
* libdl and LD\_PRELOAD. | man ld-linux, [SSDALLL][]
* Debugging programs with gdb. Stepping lazy dynamically loaded programs. | [gdb-Beej][], run gdb and read help

## Programming with POSIX

### Process Control
* POSIX process control and signaling. System calls: fork, exec, kill, signal, sigaction. | man \*
* Syscalls that are ok to call from signal handlers. Syscall interruption and restarting. | man 7 signal
* Access control with syscalls: set(|r|e)uid, set(|r|e)gid, setre(u|g)id, setres(u|g)id. Capabilities. | man \*, man 7 capabilities
* High level access control with PAM. | man 7 PAM

### Basic IO
* POSIX synchronous IO API: open, read, write, close, pipe, named pipe with mknod, soketpair. | man \*, man 7 fifo
* File control. Syncing, locking, leasing, duplicating, ...: fsync, fdatasync, fcntl, flock, dup, dup2. | man 2 \*
* File descriptor flags and options. Kernel structures behind the file descriptor table. | man 2 fcntl
* O\_NONBLOCK IO and POSIX AIO. | man 2 fcntl, man 7 aio

### Memory
* Memory management. Doing malloc(3) with sbrk(2) (deprecated) and mmap(2). | man \*
* Memory allocators: SLAB, Hoard. Common tricks: mmaping aligned memory, per-thread storage.

### Advanced IO
* IP networking. Kernel route table, IP filter. Network configuration for glibc: /etc/nsswitch.conf /etc/resolv.conf /etc/services. | man \*, man iptables, [NET3-howto][], [TODO][]
* BSD sockets. Ideas behind and resulting implementation idiosyncrasies. Common creation patterns and usage. | [network-Beej][]
* glibc networking API. Name resolving, service queries, ... | man gethostbyname and do breadth-first search through "SEE ALSO"
* IO multiplexing: select, poll. Throttling bandwidth by reading carefully. | man \*
* Classical handling, synchronous interface to asynchronous IO with continuations (co-routines).
* Linux epoll and inotify, BSD kqueue, Linux NETLINK, TX-ring. | man epoll, man inotify, man kqueue (on BSD), man 7 netlink
* Push and pull data processing models. Throughput versus latency.

### Threads, Synchronisation and Related
* Threads and synchronisation: clone(2), pthreads, shared memory, message queues, symaphores, synchronisation with file locks. | man 2 clone, man 2 pthreads, man 2 fcntl, man 2 flock, man 2 mmap, [IPC-Beej][]
* Debugging programs with ptrace (without details). | man ptrace

## Back to the Theory

### Scheduling

* Process scheduling: basic, multi-rate, cooperative, priority FIFO, pre-emptive, priority proportional, deadline. | [sched-wiki][], [sched-rmuhamma][], [sched-felix][], [sched-osdev][], [sched-wmm24][], [sched-oldlinux][], [sched-amit][]
* Linux process scheduler, process states. O(1) rescheduling (resched). | [sched-oldlinux][], [sched-amit][]
* Special schedulers: FIFO, OTHER, BATCH. | man 2 sched\_setscheduler
* Realtime scheduling: hi/low interrupts and preemption, process context preemption, kernel process preemption, (magic) scheduler preemption. | see questions above
* Artifacts: priority fluctuation with O(1) resched, priority inversion. | see questions above, [sched-pi-wiki][], [sched-sp10][]
* IO scheduling: noop, single queue, elevator, multiqueue. Linux: anticipatory, deadline, CFQ. | [io-sched-wiki][], [io-sched-devshed][]
* Artifacts: priority inversion.

### File systems

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

## Good to Know About

* Audio API: Alsa, OSS, JACK.
* Marshalling between languages.
* Dbus, X11.
* Efficient system startup. Beyond System V init: upstart, systemd.

  [sched-sp10]: http://www.cs.uiuc.edu/class/sp10/cs423/lectures/08-sched.pdf
  [io-sched-wiki]: http://en.wikipedia.org/wiki/I/O_scheduling
  [io-sched-devshed]: http://www.devshed.com/c/a/BrainDump/Linux-IO-Schedulers/
  [sched-pi-wiki]: http://en.wikipedia.org/wiki/Priority_inversion
  [sched-wiki]: http://en.wikipedia.org/wiki/Scheduling_(computing)
  [sched-wmm24]: https://www.cs.drexel.edu/~wmm24/cs370/resources/Scheduler.pdf
  [sched-amit]: http://cs.boisestate.edu/~amit/teaching/597/scheduling.pdf
  [sched-oldlinux]: http://oreilly.com/catalog/linuxkernel/chapter/ch10.html
  [sched-osdev]: http://wiki.osdev.org/Scheduling_Algorithms
  [sched-felix]: http://homepages.uel.ac.uk/u0214248/FELIX1.htm
  [sched-rmuhamma]: http://www.personal.kent.edu/~rmuhamma/OpSystems/Myos/cpuScheduling.htm
  [unix-notes-ru]: http://github.com/oxij/unix-notes-ru/
  [monolithic-kernel-wiki]: http://en.wikipedia.org/wiki/Monolithic_kernel
  [discretionary-AC-wiki]: http://en.wikipedia.org/wiki/Discretionary_access_control
  [mandatory-AC-wiki]: http://en.wikipedia.org/wiki/Mandatory_access_control
  [role-AC-wiki]: http://en.wikipedia.org/wiki/Role-based_access_control
  [SELinux-wiki]: http://en.wikipedia.org/wiki/Security-Enhanced_Linux
  [SELinux-FAQ]: http://www.nsa.gov/research/selinux/faqs.shtml
  [TCSEC-wiki]: http://en.wikipedia.org/wiki/Trusted_Computer_System_Evaluation_Criteria
  [micro-kernel-wiki]: http://en.wikipedia.org/wiki/Microkernel
  [exo-osdev]: http://wiki.osdev.org/Exokernel
  [exo-kernel-wiki]: http://en.wikipedia.org/wiki/Exokernel
  [exo-MIT]: http://pdos.csail.mit.edu/exo.html
  [exo-MIT-papers]: http://pdos.csail.mit.edu/PDOS-papers.html#Exokernels
  [exo-wiseman]: http://u.cs.biu.ac.il/~wiseman/2os/microkernels/exokernel.pdf
  [exo-nemesis-papers]: http://www.cl.cam.ac.uk/research/srg/netos/old-projects/nemesis/documentation.html
  [exo-nemesis-OSSFDM]: http://www.cl.cam.ac.uk/Research/SRG/netos/old-projects/pegasus/papers/usenix.ps.gz
  [TLK-book]: http://tldp.org/LDP/tlk/tlk.html
  [unix-history-wiki]: http://en.wikipedia.org/wiki/Unix#History "Unix history"
  [unix-history-graph]: http://www.levenez.com/unix/unix_a4.pdf  "Unix version history graph"
  [link-sorry-state]: http://www.macieira.org/blog/2012/01/sorry-state-of-dynamic-libraries-on-linux/
  [link-DLILAW1]: http://www.symantec.com/connect/articles/dynamic-linking-linux-and-windows-part-one
  [link-DLILAW2]: http://www.symantec.com/connect/articles/dynamic-linking-linux-and-windows-part-two
  [link-drepper]: http://www.akkadia.org/drepper/dsohowto.pdf-
  [NET3-howto]: http://tldp.org/HOWTO/NET3-4-HOWTO.html
  [SSDALLL]: http://www.yolinux.com/TUTORIALS/LibraryArchives-StaticAndDynamic.html
  [gdb-Beej]: http://beej.us/guide/bggdb/
  [network-Beej]: http://beej.us/guide/bgnet/
  [IPC-Beej]: http://beej.us/guide/bgipc/
  [WEPSKAM]: http://lwn.net/Articles/250967/
