
if-else:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 5e 00 00 00       	jmp    30063 <main>

00030005 <if_else>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	83 ec 10             	sub    $0x10,%esp
   3000b:	e8 bf 00 00 00       	call   300cf <__x86.get_pc_thunk.ax>
   30010:	05 f0 1f 00 00       	add    $0x1ff0,%eax
   30015:	81 7d 08 f4 01 00 00 	cmpl   $0x1f4,0x8(%ebp)
   3001c:	7e 09                	jle    30027 <if_else+0x22>
   3001e:	c7 45 fc 96 00 00 00 	movl   $0x96,-0x4(%ebp)
   30025:	eb 37                	jmp    3005e <if_else+0x59>
   30027:	81 7d 08 2c 01 00 00 	cmpl   $0x12c,0x8(%ebp)
   3002e:	7e 09                	jle    30039 <if_else+0x34>
   30030:	c7 45 fc 64 00 00 00 	movl   $0x64,-0x4(%ebp)
   30037:	eb 25                	jmp    3005e <if_else+0x59>
   30039:	83 7d 08 64          	cmpl   $0x64,0x8(%ebp)
   3003d:	7e 09                	jle    30048 <if_else+0x43>
   3003f:	c7 45 fc 4b 00 00 00 	movl   $0x4b,-0x4(%ebp)
   30046:	eb 16                	jmp    3005e <if_else+0x59>
   30048:	83 7d 08 32          	cmpl   $0x32,0x8(%ebp)
   3004c:	7e 09                	jle    30057 <if_else+0x52>
   3004e:	c7 45 fc 32 00 00 00 	movl   $0x32,-0x4(%ebp)
   30055:	eb 07                	jmp    3005e <if_else+0x59>
   30057:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   3005e:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30061:	c9                   	leave  
   30062:	c3                   	ret    

00030063 <main>:
   30063:	55                   	push   %ebp
   30064:	89 e5                	mov    %esp,%ebp
   30066:	53                   	push   %ebx
   30067:	83 ec 10             	sub    $0x10,%esp
   3006a:	e8 64 00 00 00       	call   300d3 <__x86.get_pc_thunk.bx>
   3006f:	81 c3 91 1f 00 00    	add    $0x1f91,%ebx
   30075:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   3007c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   30083:	eb 32                	jmp    300b7 <main+0x54>
   30085:	8b 45 f8             	mov    -0x8(%ebp),%eax
   30088:	8b 84 83 20 00 00 00 	mov    0x20(%ebx,%eax,4),%eax
   3008f:	50                   	push   %eax
   30090:	e8 70 ff ff ff       	call   30005 <if_else>
   30095:	83 c4 04             	add    $0x4,%esp
   30098:	89 c1                	mov    %eax,%ecx
   3009a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3009d:	8d 50 01             	lea    0x1(%eax),%edx
   300a0:	89 55 f4             	mov    %edx,-0xc(%ebp)
   300a3:	8b 84 83 60 00 00 00 	mov    0x60(%ebx,%eax,4),%eax
   300aa:	39 c1                	cmp    %eax,%ecx
   300ac:	74 06                	je     300b4 <main+0x51>
   300ae:	b8 01 00 00 00       	mov    $0x1,%eax
   300b3:	82 ff 45             	cmp    $0x45,%bh
   300b6:	f8                   	clc    
   300b7:	8b 45 f8             	mov    -0x8(%ebp),%eax
   300ba:	83 f8 0d             	cmp    $0xd,%eax
   300bd:	76 c6                	jbe    30085 <main+0x22>
   300bf:	b8 00 00 00 00       	mov    $0x0,%eax
   300c4:	82 b8 00 00 00 00 8b 	cmpb   $0x8b,0x0(%eax)
   300cb:	5d                   	pop    %ebp
   300cc:	fc                   	cld    
   300cd:	c9                   	leave  
   300ce:	c3                   	ret    

000300cf <__x86.get_pc_thunk.ax>:
   300cf:	8b 04 24             	mov    (%esp),%eax
   300d2:	c3                   	ret    

000300d3 <__x86.get_pc_thunk.bx>:
   300d3:	8b 1c 24             	mov    (%esp),%ebx
   300d6:	c3                   	ret    
