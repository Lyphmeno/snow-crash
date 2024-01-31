Disassembly of section .text:

080483f0 <_start>:
		xor    %ebp,%ebp
		pop    %esi
		mov    %esp,%ecx
		and    $0xfffffff0,%esp
		push   %eax
		push   %esp
		push   %edx
		push   $0x8048580
		push   $0x8048510
		push   %ecx
		push   %esi
		push   $0x80484a4
		call   80483d0 <__libc_start_main@plt>
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

08048420 <__do_global_dtors_aux>:
		push   %ebp
		mov    %esp,%ebp
		push   %ebx
		sub    $0x4,%esp
		cmpb   $0x0,0x804a024
		jne    804846f <__do_global_dtors_aux+0x4f>
		mov    0x804a028,%eax
		mov    $0x8049f20,%ebx
		sub    $0x8049f1c,%ebx
		sar    $0x2,%ebx
		sub    $0x1,%ebx
		cmp    %ebx,%eax
		jae    8048468 <__do_global_dtors_aux+0x48>
		lea    0x0(%esi),%esi
		add    $0x1,%eax
		mov    %eax,0x804a028
		call   *0x8049f1c(,%eax,4)
		mov    0x804a028,%eax
		cmp    %ebx,%eax
		jb     8048450 <__do_global_dtors_aux+0x30>
		movb   $0x1,0x804a024
		add    $0x4,%esp
		pop    %ebx
		pop    %ebp
		ret    
		lea    0x0(%esi,%eiz,1),%esi
		lea    0x0(%edi,%eiz,1),%edi

08048480 <frame_dummy>:
		push   %ebp
		mov    %esp,%ebp
		sub    $0x18,%esp
		mov    0x8049f24,%eax
		test   %eax,%eax
		je     80484a1 <frame_dummy+0x21>
		mov    $0x0,%eax
		test   %eax,%eax
		je     80484a1 <frame_dummy+0x21>
		movl   $0x8049f24,(%esp)
		call   *%eax
		leave  
		ret    
		nop

080484a4 <main>:
		push   %ebp
		mov    %esp,%ebp
		and    $0xfffffff0,%esp
		sub    $0x20,%esp
		call   80483a0 <getegid@plt>
		mov    %eax,0x18(%esp)
		call   8048390 <geteuid@plt>
		mov    %eax,0x1c(%esp)
		mov    0x18(%esp),%eax
		mov    %eax,0x8(%esp)
		mov    0x18(%esp),%eax
		mov    %eax,0x4(%esp)
		mov    0x18(%esp),%eax
		mov    %eax,(%esp)
		call   80483e0 <setresgid@plt>
		mov    0x1c(%esp),%eax
		mov    %eax,0x8(%esp)
		mov    0x1c(%esp),%eax
		mov    %eax,0x4(%esp)
		mov    0x1c(%esp),%eax
		mov    %eax,(%esp)
		call   8048380 <setresuid@plt>
		movl   $0x80485e0,(%esp)
		call   80483b0 <system@plt>
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

08048510 <__libc_csu_init>:
		push   %ebp
		push   %edi
		push   %esi
		push   %ebx
		call   8048582 <__i686.get_pc_thunk.bx>
		add    $0x1adb,%ebx
		sub    $0x1c,%esp
		mov    0x30(%esp),%ebp
		lea    -0xe0(%ebx),%edi
		call   8048340 <_init>
		lea    -0xe0(%ebx),%eax
		sub    %eax,%edi
		sar    $0x2,%edi
		test   %edi,%edi
		je     8048569 <__libc_csu_init+0x59>
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
		jne    8048548 <__libc_csu_init+0x38>
		add    $0x1c,%esp
		pop    %ebx
		pop    %esi
		pop    %edi
		pop    %ebp
		ret    
		jmp    8048580 <__libc_csu_fini>
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

08048580 <__libc_csu_fini>:
		repz ret 

08048582 <__i686.get_pc_thunk.bx>:
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

08048590 <__do_global_ctors_aux>:
		push   %ebp
		mov    %esp,%ebp
		push   %ebx
		sub    $0x4,%esp
		mov    0x8049f14,%eax
		cmp    $0xffffffff,%eax
		je     80485b4 <__do_global_ctors_aux+0x24>
		mov    $0x8049f14,%ebx
		xchg   %ax,%ax
		sub    $0x4,%ebx
		call   *%eax
		mov    (%ebx),%eax
		cmp    $0xffffffff,%eax
		jne    80485a8 <__do_global_ctors_aux+0x18>
		add    $0x4,%esp
		pop    %ebx
		pop    %ebp
		ret    
		nop
		nop

Disassembly of section .fini:

080485bc <_fini>:
		push   %ebx
		sub    $0x8,%esp
		call   80485c5 <_fini+0x9>
		pop    %ebx
		add    $0x1a2f,%ebx
		call   8048420 <__do_global_dtors_aux>
		add    $0x8,%esp
		pop    %ebx
		ret    
