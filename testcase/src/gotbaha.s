
gotbaha:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 a0 00 00 00       	jmp    300a5 <main>

00030005 <is_prime>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	83 ec 10             	sub    $0x10,%esp
   3000b:	e8 db 00 00 00       	call   300eb <__x86.get_pc_thunk.ax>
   30010:	05 f0 1f 00 00       	add    $0x1ff0,%eax
   30015:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
   30019:	7f 07                	jg     30022 <is_prime+0x1d>
   3001b:	b8 00 00 00 00       	mov    $0x0,%eax
   30020:	eb 2d                	jmp    3004f <is_prime+0x4a>
   30022:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%ebp)
   30029:	eb 17                	jmp    30042 <is_prime+0x3d>
   3002b:	8b 45 08             	mov    0x8(%ebp),%eax
   3002e:	99                   	cltd   
   3002f:	f7 7d fc             	idivl  -0x4(%ebp)
   30032:	89 d0                	mov    %edx,%eax
   30034:	85 c0                	test   %eax,%eax
   30036:	75 07                	jne    3003f <is_prime+0x3a>
   30038:	b8 00 00 00 00       	mov    $0x0,%eax
   3003d:	eb 10                	jmp    3004f <is_prime+0x4a>
   3003f:	ff 45 fc             	incl   -0x4(%ebp)
   30042:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30045:	3b 45 08             	cmp    0x8(%ebp),%eax
   30048:	7c e1                	jl     3002b <is_prime+0x26>
   3004a:	b8 01 00 00 00       	mov    $0x1,%eax
   3004f:	c9                   	leave  
   30050:	c3                   	ret    

00030051 <gotbaha>:
   30051:	55                   	push   %ebp
   30052:	89 e5                	mov    %esp,%ebp
   30054:	83 ec 10             	sub    $0x10,%esp
   30057:	e8 8f 00 00 00       	call   300eb <__x86.get_pc_thunk.ax>
   3005c:	05 a4 1f 00 00       	add    $0x1fa4,%eax
   30061:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%ebp)
   30068:	eb 2c                	jmp    30096 <gotbaha+0x45>
   3006a:	ff 75 fc             	pushl  -0x4(%ebp)
   3006d:	e8 93 ff ff ff       	call   30005 <is_prime>
   30072:	83 c4 04             	add    $0x4,%esp
   30075:	85 c0                	test   %eax,%eax
   30077:	74 1a                	je     30093 <gotbaha+0x42>
   30079:	8b 45 08             	mov    0x8(%ebp),%eax
   3007c:	2b 45 fc             	sub    -0x4(%ebp),%eax
   3007f:	50                   	push   %eax
   30080:	e8 80 ff ff ff       	call   30005 <is_prime>
   30085:	83 c4 04             	add    $0x4,%esp
   30088:	85 c0                	test   %eax,%eax
   3008a:	74 07                	je     30093 <gotbaha+0x42>
   3008c:	b8 01 00 00 00       	mov    $0x1,%eax
   30091:	eb 10                	jmp    300a3 <gotbaha+0x52>
   30093:	ff 45 fc             	incl   -0x4(%ebp)
   30096:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30099:	3b 45 08             	cmp    0x8(%ebp),%eax
   3009c:	7c cc                	jl     3006a <gotbaha+0x19>
   3009e:	b8 00 00 00 00       	mov    $0x0,%eax
   300a3:	c9                   	leave  
   300a4:	c3                   	ret    

000300a5 <main>:
   300a5:	55                   	push   %ebp
   300a6:	89 e5                	mov    %esp,%ebp
   300a8:	83 ec 10             	sub    $0x10,%esp
   300ab:	e8 3b 00 00 00       	call   300eb <__x86.get_pc_thunk.ax>
   300b0:	05 50 1f 00 00       	add    $0x1f50,%eax
   300b5:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%ebp)
   300bc:	eb 1a                	jmp    300d8 <main+0x33>
   300be:	ff 75 fc             	pushl  -0x4(%ebp)
   300c1:	e8 8b ff ff ff       	call   30051 <gotbaha>
   300c6:	83 c4 04             	add    $0x4,%esp
   300c9:	83 f8 01             	cmp    $0x1,%eax
   300cc:	74 06                	je     300d4 <main+0x2f>
   300ce:	b8 01 00 00 00       	mov    $0x1,%eax
   300d3:	82 83 45 fc 02 83 7d 	addb   $0x7d,-0x7cfd03bb(%ebx)
   300da:	fc                   	cld    
   300db:	64 7e e0             	fs jle 300be <main+0x19>
   300de:	b8 00 00 00 00       	mov    $0x0,%eax
   300e3:	82 b8 00 00 00 00 c9 	cmpb   $0xc9,0x0(%eax)
   300ea:	c3                   	ret    

000300eb <__x86.get_pc_thunk.ax>:
   300eb:	8b 04 24             	mov    (%esp),%eax
   300ee:	c3                   	ret    
