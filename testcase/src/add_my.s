
add:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 20 00 00 00       	jmp    30025 <main>

00030005 <add>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	83 ec 10             	sub    $0x10,%esp
   3000b:	e8 b8 00 00 00       	call   300c8 <__x86.get_pc_thunk.ax>
   30010:	05 f0 1f 00 00       	add    $0x1ff0,%eax
   30015:	8b 55 08             	mov    0x8(%ebp),%edx
   30018:	8b 45 0c             	mov    0xc(%ebp),%eax
   3001b:	01 d0                	add    %edx,%eax
   3001d:	89 45 fc             	mov    %eax,-0x4(%ebp)
   30020:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30023:	c9                   	leave  
   30024:	c3                   	ret    

00030025 <main>:
   30025:	55                   	push   %ebp
   30026:	89 e5                	mov    %esp,%ebp
   30028:	53                   	push   %ebx
   30029:	83 ec 10             	sub    $0x10,%esp
   3002c:	e8 9b 00 00 00       	call   300cc <__x86.get_pc_thunk.bx>
   30031:	81 c3 cf 1f 00 00    	add    $0x1fcf,%ebx
   30037:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   3003e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   30045:	eb 51                	jmp    30098 <main+0x73>
   30047:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   3004e:	eb 3d                	jmp    3008d <main+0x68>
   30050:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30053:	8b 94 83 20 00 00 00 	mov    0x20(%ebx,%eax,4),%edx
   3005a:	8b 45 f8             	mov    -0x8(%ebp),%eax
   3005d:	8b 84 83 20 00 00 00 	mov    0x20(%ebx,%eax,4),%eax
   30064:	52                   	push   %edx
   30065:	50                   	push   %eax
   30066:	e8 9a ff ff ff       	call   30005 <add>
   3006b:	83 c4 08             	add    $0x8,%esp
   3006e:	89 c1                	mov    %eax,%ecx
   30070:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30073:	8d 50 01             	lea    0x1(%eax),%edx
   30076:	89 55 f0             	mov    %edx,-0x10(%ebp)
   30079:	8b 84 83 40 00 00 00 	mov    0x40(%ebx,%eax,4),%eax
   30080:	39 c1                	cmp    %eax,%ecx
   30082:	74 06                	je     3008a <main+0x65>
   30084:	b8 01 00 00 00       	mov    $0x1,%eax
   30089:	82 ff 45             	cmp    $0x45,%bh
   3008c:	f4                   	hlt    
   3008d:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30090:	83 f8 07             	cmp    $0x7,%eax
   30093:	76 bb                	jbe    30050 <main+0x2b>
   30095:	ff 45 f8             	incl   -0x8(%ebp)
   30098:	8b 45 f8             	mov    -0x8(%ebp),%eax
   3009b:	83 f8 07             	cmp    $0x7,%eax
   3009e:	76 a7                	jbe    30047 <main+0x22>
   300a0:	83 7d f8 08          	cmpl   $0x8,-0x8(%ebp)
   300a4:	74 06                	je     300ac <main+0x87>
   300a6:	b8 01 00 00 00       	mov    $0x1,%eax
   300ab:	82 83 7d f4 08 74 06 	addb   $0x6,0x7408f47d(%ebx)
   300b2:	b8 01 00 00 00       	mov    $0x1,%eax
   300b7:	82 b8 00 00 00 00 82 	cmpb   $0x82,0x0(%eax)
   300be:	b8 00 00 00 00       	mov    $0x0,%eax
   300c3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   300c6:	c9                   	leave  
   300c7:	c3                   	ret    

000300c8 <__x86.get_pc_thunk.ax>:
   300c8:	8b 04 24             	mov    (%esp),%eax
   300cb:	c3                   	ret    

000300cc <__x86.get_pc_thunk.bx>:
   300cc:	8b 1c 24             	mov    (%esp),%ebx
   300cf:	c3                   	ret    
