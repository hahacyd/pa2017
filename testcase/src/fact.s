
fact:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 39 00 00 00       	jmp    3003e <main>

00030005 <fact>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	83 ec 08             	sub    $0x8,%esp
   3000b:	e8 ae 00 00 00       	call   300be <__x86.get_pc_thunk.ax>
   30010:	05 f0 1f 00 00       	add    $0x1ff0,%eax
   30015:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   30019:	74 06                	je     30021 <fact+0x1c>
   3001b:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
   3001f:	75 07                	jne    30028 <fact+0x23>
   30021:	b8 01 00 00 00       	mov    $0x1,%eax
   30026:	eb 14                	jmp    3003c <fact+0x37>
   30028:	8b 45 08             	mov    0x8(%ebp),%eax
   3002b:	48                   	dec    %eax
   3002c:	83 ec 0c             	sub    $0xc,%esp
   3002f:	50                   	push   %eax
   30030:	e8 d0 ff ff ff       	call   30005 <fact>
   30035:	83 c4 10             	add    $0x10,%esp
   30038:	0f af 45 08          	imul   0x8(%ebp),%eax
   3003c:	c9                   	leave  
   3003d:	c3                   	ret    

0003003e <main>:
   3003e:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   30042:	83 e4 f0             	and    $0xfffffff0,%esp
   30045:	ff 71 fc             	pushl  -0x4(%ecx)
   30048:	55                   	push   %ebp
   30049:	89 e5                	mov    %esp,%ebp
   3004b:	53                   	push   %ebx
   3004c:	51                   	push   %ecx
   3004d:	83 ec 10             	sub    $0x10,%esp
   30050:	e8 6d 00 00 00       	call   300c2 <__x86.get_pc_thunk.bx>
   30055:	81 c3 ab 1f 00 00    	add    $0x1fab,%ebx
   3005b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   30062:	eb 3f                	jmp    300a3 <main+0x65>
   30064:	83 ec 0c             	sub    $0xc,%esp
   30067:	ff 75 f4             	pushl  -0xc(%ebp)
   3006a:	e8 96 ff ff ff       	call   30005 <fact>
   3006f:	83 c4 10             	add    $0x10,%esp
   30072:	89 c1                	mov    %eax,%ecx
   30074:	c7 c0 60 20 03 00    	mov    $0x32060,%eax
   3007a:	8b 55 f4             	mov    -0xc(%ebp),%edx
   3007d:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
   30080:	c7 c0 60 20 03 00    	mov    $0x32060,%eax
   30086:	8b 55 f4             	mov    -0xc(%ebp),%edx
   30089:	8b 14 90             	mov    (%eax,%edx,4),%edx
   3008c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3008f:	8b 84 83 20 00 00 00 	mov    0x20(%ebx,%eax,4),%eax
   30096:	39 c2                	cmp    %eax,%edx
   30098:	74 06                	je     300a0 <main+0x62>
   3009a:	b8 01 00 00 00       	mov    $0x1,%eax
   3009f:	82 ff 45             	cmp    $0x45,%bh
   300a2:	f4                   	hlt    
   300a3:	83 7d f4 0c          	cmpl   $0xc,-0xc(%ebp)
   300a7:	7e bb                	jle    30064 <main+0x26>
   300a9:	b8 00 00 00 00       	mov    $0x0,%eax
   300ae:	82 b8 00 00 00 00 8d 	cmpb   $0x8d,0x0(%eax)
   300b5:	65 f8                	gs clc 
   300b7:	59                   	pop    %ecx
   300b8:	5b                   	pop    %ebx
   300b9:	5d                   	pop    %ebp
   300ba:	8d 61 fc             	lea    -0x4(%ecx),%esp
   300bd:	c3                   	ret    

000300be <__x86.get_pc_thunk.ax>:
   300be:	8b 04 24             	mov    (%esp),%eax
   300c1:	c3                   	ret    

000300c2 <__x86.get_pc_thunk.bx>:
   300c2:	8b 1c 24             	mov    (%esp),%ebx
   300c5:	c3                   	ret    
