Disassembly of section .text:

080484a0 <_start>:
		xor    %ebp,%ebp
		pop    %esi
		mov    %esp,%ecx
		and    $0xfffffff0,%esp
		push   %eax
		push   %esp
		push   %edx
		push   $0x8048720
		push   $0x80486b0
		push   %ecx
		push   %esi
		push   $0x8048554
		call   8048480 <__libc_start_main@plt>
		hlt    
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

080484d0 <__do_global_dtors_aux>:
		push   %ebp
		mov    %esp,%ebp
		push   %ebx
		sub    $0x4,%esp
		cmpb   $0x0,0x804a030
		jne    804851f <__do_global_dtors_aux+0x4f>
		mov    0x804a034,%eax
		mov    $0x8049f20,%ebx
		sub    $0x8049f1c,%ebx
		sar    $0x2,%ebx
		sub    $0x1,%ebx
		cmp    %ebx,%eax
		jae    8048518 <__do_global_dtors_aux+0x48>
		lea    0x0(%esi),%esi
		add    $0x1,%eax
		mov    %eax,0x804a034
		call   *0x8049f1c(,%eax,4)
		mov    0x804a034,%eax
		cmp    %ebx,%eax
		jb     8048500 <__do_global_dtors_aux+0x30>
		movb   $0x1,0x804a030
		add    $0x4,%esp
		pop    %ebx
		pop    %ebp
		ret    
		lea    0x0(%esi,%eiz,1),%esi
		lea    0x0(%edi,%eiz,1),%edi

08048530 <frame_dummy>:
		push   %ebp
		mov    %esp,%ebp
		sub    $0x18,%esp
		mov    0x8049f24,%eax
		test   %eax,%eax
		je     8048551 <frame_dummy+0x21>
		mov    $0x0,%eax
		test   %eax,%eax
		je     8048551 <frame_dummy+0x21>
		movl   $0x8049f24,(%esp)
		call   *%eax
		leave  
		ret    
		nop

08048554 <main>:
		push   %ebp
		mov    %esp,%ebp
		and    $0xfffffff0,%esp
		sub    $0x430,%esp
		mov    0xc(%ebp),%eax
		mov    %eax,0x1c(%esp)
		mov    0x10(%ebp),%eax
		mov    %eax,0x18(%esp)
		mov    %gs:0x14,%eax
		mov    %eax,0x42c(%esp)
		xor    %eax,%eax
		cmpl   $0x1,0x8(%ebp)
		jne    80485a6 <main+0x52>
		mov    0x1c(%esp),%eax
		mov    (%eax),%edx
		mov    $0x8048780,%eax
		mov    %edx,0x4(%esp)
		mov    %eax,(%esp)
		call   8048420 <printf@plt>
		movl   $0x1,(%esp)
		call   8048460 <exit@plt>
		mov    0x1c(%esp),%eax
		add    $0x4,%eax
		mov    (%eax),%eax
		movl   $0x8048793,0x4(%esp)
		
		mov    %eax,(%esp)
		call   8048400 <strstr@plt>
		test   %eax,%eax
		je     80485e9 <main+0x95>
		mov    0x1c(%esp),%eax
		add    $0x4,%eax
		mov    (%eax),%edx
		mov    $0x8048799,%eax
		mov    %edx,0x4(%esp)
		mov    %eax,(%esp)
		call   8048420 <printf@plt>
		movl   $0x1,(%esp)
		call   8048460 <exit@plt>
		mov    0x1c(%esp),%eax
		add    $0x4,%eax
		mov    (%eax),%eax
		movl   $0x0,0x4(%esp)
		
		mov    %eax,(%esp)
		call   8048470 <open@plt>
		mov    %eax,0x24(%esp)
		cmpl   $0xffffffff,0x24(%esp)
		jne    804862e <main+0xda>
		mov    0x1c(%esp),%eax
		add    $0x4,%eax
		mov    (%eax),%eax
		mov    %eax,0x8(%esp)
		movl   $0x80487b2,0x4(%esp)
		
		movl   $0x1,(%esp)
		call   8048440 <err@plt>
		movl   $0x400,0x8(%esp)
		
		lea    0x2c(%esp),%eax
		mov    %eax,0x4(%esp)
		mov    0x24(%esp),%eax
		mov    %eax,(%esp)
		call   8048410 <read@plt>
		mov    %eax,0x28(%esp)
		cmpl   $0xffffffff,0x28(%esp)
		jne    8048671 <main+0x11d>
		mov    0x24(%esp),%eax
		mov    %eax,0x8(%esp)
		movl   $0x80487c4,0x4(%esp)
		
		movl   $0x1,(%esp)
		call   8048440 <err@plt>
		mov    0x28(%esp),%eax
		mov    %eax,0x8(%esp)
		lea    0x2c(%esp),%eax
		mov    %eax,0x4(%esp)
		movl   $0x1,(%esp)
		call   8048490 <write@plt>
		mov    0x42c(%esp),%edx
		xor    %gs:0x14,%edx
		je     80486a2 <main+0x14e>
		call   8048430 <__stack_chk_fail@plt>
		leave  
		ret    
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

080486b0 <__libc_csu_init>:
		push   %ebp
		push   %edi
		push   %esi
		push   %ebx
		call   8048722 <__i686.get_pc_thunk.bx>
		add    $0x193b,%ebx
		sub    $0x1c,%esp
		mov    0x30(%esp),%ebp
		lea    -0xe0(%ebx),%edi
		call   80483b4 <_init>
		lea    -0xe0(%ebx),%eax
		sub    %eax,%edi
		sar    $0x2,%edi
		test   %edi,%edi
		je     8048709 <__libc_csu_init+0x59>
		xor    %esi,%esi
		lea    0x0(%esi),%esi
		mov    0x38(%esp),%eax
		mov    %ebp,(%esp)
		mov    %eax,0x8(%esp)
		mov    0x34(%esp),%eax
		mov    %eax,0x4(%esp)
		call   *-0xe0(%ebx,%esi,4)
		add    $0x1,%esi
		cmp    %edi,%esi
		jne    80486e8 <__libc_csu_init+0x38>
		add    $0x1c,%esp
		pop    %ebx
		pop    %esi
		pop    %edi
		pop    %ebp
		ret    
		jmp    8048720 <__libc_csu_fini>
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

08048720 <__libc_csu_fini>:
		repz ret 

08048722 <__i686.get_pc_thunk.bx>:
		mov    (%esp),%ebx
		ret    
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

08048730 <__do_global_ctors_aux>:
		push   %ebp
		mov    %esp,%ebp
		push   %ebx
		sub    $0x4,%esp
		mov    0x8049f14,%eax
		cmp    $0xffffffff,%eax
		je     8048754 <__do_global_ctors_aux+0x24>
		mov    $0x8049f14,%ebx
		xchg   %ax,%ax
		sub    $0x4,%ebx
		call   *%eax
		mov    (%ebx),%eax
		cmp    $0xffffffff,%eax
		jne    8048748 <__do_global_ctors_aux+0x18>
		add    $0x4,%esp
		pop    %ebx
		pop    %ebp
		ret    
		nop
		nop

Disassembly of section .fini:

0804875c <_fini>:
		push   %ebx
		sub    $0x8,%esp
		call   8048765 <_fini+0x9>
		pop    %ebx
		add    $0x188f,%ebx
		call   80484d0 <__do_global_dtors_aux>
		add    $0x8,%esp
		pop    %ebx
		ret    
