
fib:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 00 00 00 00       	jmp    30005 <main>

00030005 <main>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	83 ec 10             	sub    $0x10,%esp
   3000b:	e8 67 00 00 00       	call   30077 <__x86.get_pc_thunk.dx>
   30010:	81 c2 f0 1f 00 00    	add    $0x1ff0,%edx
   30016:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%ebp)
   3001d:	eb 45                	jmp    30064 <main+0x5f>
   3001f:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30022:	48                   	dec    %eax
   30023:	8b 8c 82 20 00 00 00 	mov    0x20(%edx,%eax,4),%ecx
   3002a:	8b 45 fc             	mov    -0x4(%ebp),%eax
   3002d:	83 e8 02             	sub    $0x2,%eax
   30030:	8b 84 82 20 00 00 00 	mov    0x20(%edx,%eax,4),%eax
   30037:	01 c1                	add    %eax,%ecx
   30039:	8b 45 fc             	mov    -0x4(%ebp),%eax
   3003c:	89 8c 82 20 00 00 00 	mov    %ecx,0x20(%edx,%eax,4)
   30043:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30046:	8b 8c 82 20 00 00 00 	mov    0x20(%edx,%eax,4),%ecx
   3004d:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30050:	8b 84 82 c0 00 00 00 	mov    0xc0(%edx,%eax,4),%eax
   30057:	39 c1                	cmp    %eax,%ecx
   30059:	74 06                	je     30061 <main+0x5c>
   3005b:	b8 01 00 00 00       	mov    $0x1,%eax
   30060:	82 ff 45             	cmp    $0x45,%bh
   30063:	fc                   	cld    
   30064:	83 7d fc 27          	cmpl   $0x27,-0x4(%ebp)
   30068:	7e b5                	jle    3001f <main+0x1a>
   3006a:	b8 00 00 00 00       	mov    $0x0,%eax
   3006f:	82 b8 00 00 00 00 c9 	cmpb   $0xc9,0x0(%eax)
   30076:	c3                   	ret    

00030077 <__x86.get_pc_thunk.dx>:
   30077:	8b 14 24             	mov    (%esp),%edx
   3007a:	c3                   	ret    
