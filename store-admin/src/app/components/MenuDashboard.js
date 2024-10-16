"use client";
import IconComponent from "./IconComponent";
import Link from "next/link";
import { usePathname } from "next/navigation";

export default function SideBarMenuDashboard() {
  const pathname = usePathname();
  return (
      <div
        className="h-full grid grid-cols-1 w-full max-w-[200px] bg-[#e9ecef] ml-0 text-[#121212] p-4 rounded-md border">
        <ul className="gap-2 w-full flex justify-start flex-col ">
          <li
            className={`p-2 rounded-md h-fit ${pathname === "/pages/dashboard" ? "text-mediumGrey bg-slate-50" : "" }`}
          >
            <Link
              href="/pages/dashboard"
              className="grid grid-cols-[auto_1fr] w-full gap-2 text-sm"
            >
              <IconComponent
                name="HiHome"
                size="16px"
                color="#adb5bd"
                className="w-fit"
              />
              Home
            </Link>
          </li>
          <li
            className={`p-2 rounded-md h-fit ${pathname === "/pages/dashboard/order" ? "text-mediumGrey bg-slate-50" : "" }`}
          >
            <Link
              href="/pages/dashboard/order"
              className="grid grid-cols-[auto_1fr] w-full gap-2 text-sm"
            >
              <IconComponent
                name="FaInbox"
                size="16px"
                color="#adb5bd"
                className="w-fit"
              />
              Orders
            </Link>
          </li>
          <li
            className={`p-2 rounded-md h-fit ${pathname === "/pages/dashboard/product" ? "text-mediumGrey bg-slate-50" : "" }`}
          >
            <Link
              href="/pages/dashboard/product"
              className="grid grid-cols-[auto_1fr] w-full gap-2 text-sm"
            >
              <IconComponent
                name="IoMdPricetag"
                size="16px"
                color="#adb5bd"
                className="w-fit"
              />
              Products
            </Link>
          </li>
          <li className="p-2">
            <Link
              href="/"
              className="grid grid-cols-[auto_1fr] w-full gap-2 text-sm"
            >
              <IconComponent
                name="BsFillFileBarGraphFill"
                size="16px"
                color="#adb5bd"
                className="w-fit"
              />
              Analitics
            </Link>
          </li>
          <li className="p-2">
            <Link
              href="/"
              className="grid grid-cols-[auto_1fr] w-full gap-2 text-sm"
            >
              <IconComponent
                name="TbTargetArrow"
                size="16px"
                color="#adb5bd"
                className="w-fit"
              />
              Marketing
            </Link>
          </li>
          <li className="p-2">
            <Link
              href="/"
              className="grid grid-cols-[auto_1fr] w-full gap-2 text-sm"
            >
              <IconComponent
                name="BiSolidDiscount"
                size="16px"
                color="#adb5bd"
                className="w-fit"
              />
              Discount
            </Link>
          </li>
        </ul>
        <ul className="flex flex-col justify-end">
          <li className="p-2">
            <Link
              href="/"
              className="grid grid-cols-[auto_1fr] w-full gap-2 text-sm"
            >
              <IconComponent
                name="IoMdSettings"
                size="16px"
                color="#adb5bd"
                className="w-fit"
              />
              Settings
            </Link>
          </li>
        </ul>
      </div>
  );
}
