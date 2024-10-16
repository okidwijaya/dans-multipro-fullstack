'use client'
import Link from "next/link";
import { useState, useEffect } from "react";
import { loginAction } from "@/redux/actions/auth";
import { connect } from "react-redux";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

export default function Home() {
  const [isSignIn, setIsSignIn] = useState(true);

  return (
    <div className="items-center justify-items-center flex min-h-screen p-8 pb-20 gap-16 sm:p-20 font-[family-name:var(--font-geist-sans)]">
        {isSignIn && (
        <div className="w-full max-w-md mx-auto flex items-center justify-center">
          <form className="w-full flex flex-col items-start text-[#121212] border border-[#121212] rounded-md p-4">
            <div className="w-full flex justify-between pb-6">
              <div className="w-full">
                <h2 className="text-xl font-semibold">Login</h2>
                <p className="text-sm">Continue to dashboard</p>
              </div>
              <button
                onClick={() => setIsSignIn(false)}
                type="button"
                className="font-semibold w-full py-1 px-3 max-w-fit mr-0 ml-auto border h-fit border-[#121212] rounded-md">
                Sign Up
              </button>
            </div>
            <label className="mb-1">
              Email
            </label>
            <input className="p-2 w-full border border-[#121212] rounded-md" type="email" required name="email" />
            <label className="mb-1 mt-2">
              Password
            </label>
            <input className="p-2 w-full border border-[#121212] rounded-md" type="text" required name="email" />
            
            <Link href="/pages/dashboard">
              <button className="font-semibold w-full py-2 px-3 max-w-full mt-4 bg-[#121212] text-white mr-0 ml-auto border h-fit border-[#121212] rounded-md" type="submit">Sign In</button>
            </Link>
          </form>
        </div>
        )}

        {!isSignIn && (
        <div className="w-full max-w-md mx-auto flex items-center justify-center">
          <form className="w-full flex flex-col items-start text-[#121212] border border-[#121212] rounded-md p-4">
            <div className="w-full flex justify-between pb-6">
              <div className="w-full">
                <h2 className="text-xl font-semibold">Register</h2>
                <p className="text-sm">Create New Account</p>
              </div>
              <button
                onClick={() => setIsSignIn(true)}
                type="button"
                className="font-semibold w-full py-1 px-3 max-w-fit mr-0 ml-auto border h-fit border-[#121212] rounded-md">
                Sign In
              </button>
            </div>
            
            <div className="grid grid-cols-2 w-full gap-2 mb-2">
              <div className="w-full flex flex-col items-start">
                <label>
                  First Name
                </label>
                <input className="p-2 w-full border border-[#121212] rounded-md" type="email" required name="email" />
              </div>
              <div className="w-full flex flex-col items-start">
                <label>
                  Last Name
                </label>
                <input className="p-2 w-full border border-[#121212] rounded-md" type="email" required name="email" />
              </div>
            </div>
            <label className="mb-1">
              Email
            </label>
            <input className="p-2 w-full border border-[#121212] rounded-md" type="email" required name="email" />
            <label className="mb-1 mt-2">
              Password
            </label>
            <input className="p-2 w-full border border-[#121212] rounded-md" type="text" required name="email" />
            
            <Link href="/pages/dashboard">
              <button className="font-semibold w-full py-2 px-3 max-w-full mt-4 bg-[#121212] text-white mr-0 ml-auto border h-fit border-[#121212] rounded-md" type="submit">Sign Up</button>
            </Link>

          </form>
        </div>
        )}
    </div>
  );
}
