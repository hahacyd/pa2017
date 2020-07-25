
hello-inline:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 00 00 00 00       	jmp    30005 <main>

00030005 <main>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	e8 28 00 00 00       	call   30035 <__x86.get_pc_thunk.ax>
   3000d:	05 f3 1f 00 00       	add    $0x1ff3,%eax
   30012:	b8 04 00 00 00       	mov    $0x4,%eax
   30017:	bb 01 00 00 00       	mov    $0x1,%ebx
   3001c:	b9 3c 00 03 00       	mov    $0x3003c,%ecx
   30021:	ba 0e 00 00 00       	mov    $0xe,%edx
   30026:	cd 80                	int    $0x80
   30028:	b8 00 00 00 00       	mov    $0x0,%eax
   3002d:	82 b8 00 00 00 00 5d 	cmpb   $0x5d,0x0(%eax)
   30034:	c3                   	ret    

00030035 <__x86.get_pc_thunk.ax>:
   30035:	8b 04 24             	mov    (%esp),%eax
   30038:	c3                   	ret    
