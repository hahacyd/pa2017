
quick-sort:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 3f 01 00 00       	jmp    30144 <main>

00030005 <partition>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	83 ec 10             	sub    $0x10,%esp
   3000b:	e8 e0 01 00 00       	call   301f0 <__x86.get_pc_thunk.ax>
   30010:	05 f0 1f 00 00       	add    $0x1ff0,%eax
   30015:	8b 45 0c             	mov    0xc(%ebp),%eax
   30018:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   3001f:	8b 45 08             	mov    0x8(%ebp),%eax
   30022:	01 d0                	add    %edx,%eax
   30024:	8b 00                	mov    (%eax),%eax
   30026:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30029:	8b 45 0c             	mov    0xc(%ebp),%eax
   3002c:	89 45 fc             	mov    %eax,-0x4(%ebp)
   3002f:	8b 45 10             	mov    0x10(%ebp),%eax
   30032:	89 45 f8             	mov    %eax,-0x8(%ebp)
   30035:	e9 88 00 00 00       	jmp    300c2 <partition+0xbd>
   3003a:	ff 4d f8             	decl   -0x8(%ebp)
   3003d:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30040:	3b 45 f8             	cmp    -0x8(%ebp),%eax
   30043:	7d 16                	jge    3005b <partition+0x56>
   30045:	8b 45 f8             	mov    -0x8(%ebp),%eax
   30048:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   3004f:	8b 45 08             	mov    0x8(%ebp),%eax
   30052:	01 d0                	add    %edx,%eax
   30054:	8b 00                	mov    (%eax),%eax
   30056:	3b 45 f4             	cmp    -0xc(%ebp),%eax
   30059:	7f df                	jg     3003a <partition+0x35>
   3005b:	8b 45 fc             	mov    -0x4(%ebp),%eax
   3005e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   30065:	8b 45 08             	mov    0x8(%ebp),%eax
   30068:	01 c2                	add    %eax,%edx
   3006a:	8b 45 f8             	mov    -0x8(%ebp),%eax
   3006d:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
   30074:	8b 45 08             	mov    0x8(%ebp),%eax
   30077:	01 c8                	add    %ecx,%eax
   30079:	8b 00                	mov    (%eax),%eax
   3007b:	89 02                	mov    %eax,(%edx)
   3007d:	eb 03                	jmp    30082 <partition+0x7d>
   3007f:	ff 45 fc             	incl   -0x4(%ebp)
   30082:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30085:	3b 45 f8             	cmp    -0x8(%ebp),%eax
   30088:	7d 16                	jge    300a0 <partition+0x9b>
   3008a:	8b 45 fc             	mov    -0x4(%ebp),%eax
   3008d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   30094:	8b 45 08             	mov    0x8(%ebp),%eax
   30097:	01 d0                	add    %edx,%eax
   30099:	8b 00                	mov    (%eax),%eax
   3009b:	3b 45 f4             	cmp    -0xc(%ebp),%eax
   3009e:	7e df                	jle    3007f <partition+0x7a>
   300a0:	8b 45 f8             	mov    -0x8(%ebp),%eax
   300a3:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   300aa:	8b 45 08             	mov    0x8(%ebp),%eax
   300ad:	01 c2                	add    %eax,%edx
   300af:	8b 45 fc             	mov    -0x4(%ebp),%eax
   300b2:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
   300b9:	8b 45 08             	mov    0x8(%ebp),%eax
   300bc:	01 c8                	add    %ecx,%eax
   300be:	8b 00                	mov    (%eax),%eax
   300c0:	89 02                	mov    %eax,(%edx)
   300c2:	8b 45 fc             	mov    -0x4(%ebp),%eax
   300c5:	3b 45 f8             	cmp    -0x8(%ebp),%eax
   300c8:	0f 8c 6f ff ff ff    	jl     3003d <partition+0x38>
   300ce:	8b 45 fc             	mov    -0x4(%ebp),%eax
   300d1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   300d8:	8b 45 08             	mov    0x8(%ebp),%eax
   300db:	01 c2                	add    %eax,%edx
   300dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
   300e0:	89 02                	mov    %eax,(%edx)
   300e2:	8b 45 fc             	mov    -0x4(%ebp),%eax
   300e5:	c9                   	leave  
   300e6:	c3                   	ret    

000300e7 <quick_sort>:
   300e7:	55                   	push   %ebp
   300e8:	89 e5                	mov    %esp,%ebp
   300ea:	83 ec 18             	sub    $0x18,%esp
   300ed:	e8 fe 00 00 00       	call   301f0 <__x86.get_pc_thunk.ax>
   300f2:	05 0e 1f 00 00       	add    $0x1f0e,%eax
   300f7:	8b 45 0c             	mov    0xc(%ebp),%eax
   300fa:	3b 45 10             	cmp    0x10(%ebp),%eax
   300fd:	7d 42                	jge    30141 <quick_sort+0x5a>
   300ff:	ff 75 10             	pushl  0x10(%ebp)
   30102:	ff 75 0c             	pushl  0xc(%ebp)
   30105:	ff 75 08             	pushl  0x8(%ebp)
   30108:	e8 f8 fe ff ff       	call   30005 <partition>
   3010d:	83 c4 0c             	add    $0xc,%esp
   30110:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30113:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30116:	48                   	dec    %eax
   30117:	83 ec 04             	sub    $0x4,%esp
   3011a:	50                   	push   %eax
   3011b:	ff 75 0c             	pushl  0xc(%ebp)
   3011e:	ff 75 08             	pushl  0x8(%ebp)
   30121:	e8 c1 ff ff ff       	call   300e7 <quick_sort>
   30126:	83 c4 10             	add    $0x10,%esp
   30129:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3012c:	40                   	inc    %eax
   3012d:	83 ec 04             	sub    $0x4,%esp
   30130:	ff 75 10             	pushl  0x10(%ebp)
   30133:	50                   	push   %eax
   30134:	ff 75 08             	pushl  0x8(%ebp)
   30137:	e8 ab ff ff ff       	call   300e7 <quick_sort>
   3013c:	83 c4 10             	add    $0x10,%esp
   3013f:	eb 01                	jmp    30142 <quick_sort+0x5b>
   30141:	90                   	nop
   30142:	c9                   	leave  
   30143:	c3                   	ret    

00030144 <main>:
   30144:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   30148:	83 e4 f0             	and    $0xfffffff0,%esp
   3014b:	ff 71 fc             	pushl  -0x4(%ecx)
   3014e:	55                   	push   %ebp
   3014f:	89 e5                	mov    %esp,%ebp
   30151:	53                   	push   %ebx
   30152:	51                   	push   %ecx
   30153:	83 ec 10             	sub    $0x10,%esp
   30156:	e8 99 00 00 00       	call   301f4 <__x86.get_pc_thunk.bx>
   3015b:	81 c3 a5 1e 00 00    	add    $0x1ea5,%ebx
   30161:	83 ec 04             	sub    $0x4,%esp
   30164:	6a 01                	push   $0x1
   30166:	6a 00                	push   $0x0
   30168:	8d 83 0c 00 00 00    	lea    0xc(%ebx),%eax
   3016e:	50                   	push   %eax
   3016f:	e8 73 ff ff ff       	call   300e7 <quick_sort>
   30174:	83 c4 10             	add    $0x10,%esp
   30177:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   3017e:	eb 18                	jmp    30198 <main+0x54>
   30180:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30183:	8b 84 83 0c 00 00 00 	mov    0xc(%ebx,%eax,4),%eax
   3018a:	3b 45 f4             	cmp    -0xc(%ebp),%eax
   3018d:	74 06                	je     30195 <main+0x51>
   3018f:	b8 01 00 00 00       	mov    $0x1,%eax
   30194:	82 ff 45             	cmp    $0x45,%bh
   30197:	f4                   	hlt    
   30198:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
   3019c:	7e e2                	jle    30180 <main+0x3c>
   3019e:	83 ec 04             	sub    $0x4,%esp
   301a1:	6a 01                	push   $0x1
   301a3:	6a 00                	push   $0x0
   301a5:	8d 83 0c 00 00 00    	lea    0xc(%ebx),%eax
   301ab:	50                   	push   %eax
   301ac:	e8 36 ff ff ff       	call   300e7 <quick_sort>
   301b1:	83 c4 10             	add    $0x10,%esp
   301b4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   301bb:	eb 18                	jmp    301d5 <main+0x91>
   301bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
   301c0:	8b 84 83 0c 00 00 00 	mov    0xc(%ebx,%eax,4),%eax
   301c7:	3b 45 f4             	cmp    -0xc(%ebp),%eax
   301ca:	74 06                	je     301d2 <main+0x8e>
   301cc:	b8 01 00 00 00       	mov    $0x1,%eax
   301d1:	82 ff 45             	cmp    $0x45,%bh
   301d4:	f4                   	hlt    
   301d5:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
   301d9:	7e e2                	jle    301bd <main+0x79>
   301db:	b8 00 00 00 00       	mov    $0x0,%eax
   301e0:	82 b8 00 00 00 00 8d 	cmpb   $0x8d,0x0(%eax)
   301e7:	65 f8                	gs clc 
   301e9:	59                   	pop    %ecx
   301ea:	5b                   	pop    %ebx
   301eb:	5d                   	pop    %ebp
   301ec:	8d 61 fc             	lea    -0x4(%ecx),%esp
   301ef:	c3                   	ret    

000301f0 <__x86.get_pc_thunk.ax>:
   301f0:	8b 04 24             	mov    (%esp),%eax
   301f3:	c3                   	ret    

000301f4 <__x86.get_pc_thunk.bx>:
   301f4:	8b 1c 24             	mov    (%esp),%ebx
   301f7:	c3                   	ret    
