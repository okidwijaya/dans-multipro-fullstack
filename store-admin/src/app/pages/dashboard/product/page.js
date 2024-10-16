import React from "react";
import IconComponent from "@/app/components/IconComponent";
import Image from "next/image";
import placeholderimage from "@/public/assets/images/placeholder-image.png";

function page() {
  return (
    <div className="text-[#121212] w-full max-w-full py-6 px-8">
      <div className="text-[#121212] grid grid-cols-2 w-full max-w-full">
        <h2 className="text-[#121212] text-xl font-semibold">Products</h2>
        <div className="flex w-fit flex-row justify-end items-end content-between gap-2 ml-auto mr-0">
          <button className="py-1 px-3 text-sm border-bgBase border text-bgBase rounded-md">
            Export
          </button>
          <button className="py-1 px-3 text-sm border-bgBase border text-bgBase rounded-md">
            More Action
          </button>
          <button className="py-1 px-3 text-sm bg-bgBase text-textBase rounded-md">
            Crete Product
          </button>
        </div>
      </div>

      <div className="rounded-md border border-lightGrey mt-8">
        <div className="border-b boder-b-lightGrey pb-4 pt-2 grid grid-cols-2 w-full max-w-full justify-between">
          <div className="px-2 flex w-full flex-row justify-start items-start gap-2 ml-auto mr-0">
            <button className="py-1 px-2 text-sm border-mediumBlack border text-bgBase rounded-md">
              All
            </button>
            <button className="py-1 px-2 text-sm border-bgSecondary border text-bgBase rounded-md">
              Active
            </button>
            <button className="py-1 px-2 text-sm border-bgSecondary border text-bgBase rounded-md">
              Draft
            </button>
            <button className="py-1 px-2 text-sm border-bgSecondary border text-bgBase rounded-md">
              Archived
            </button>
          </div>
          <div className="flex px-2 flex-row justify-end items-center gap-2">
            <button className="w-fit text-sm order-bgSecondary border border-mediumBlack p-1 rounded-md">
              <IconComponent
                name="IoMdSearch"
                size="16px"
                color="#121212"
                className="w-fit"
              />
            </button>
            <button className="w-fit text-sm order-bgSecondary border border-mediumBlack p-1 rounded-md">
              <IconComponent
                name="BiSortAlt2"
                size="16px"
                color="#121212"
                className="w-fit"
              />
            </button>
          </div>
        </div>

        <div className="w-full overflow-x-scroll">
          <div className="px-2 border-b boder-b-lightGrey py-2 overflow-x-scroll w-full max-w-full grid grid-cols-[250px_100px_150px_150px_100px_100px_100px_100px]">
            <div className="flex gap-2 flex-row justify-start items-center">
              <IconComponent
                name="MdCheckBoxOutlineBlank"
                size="16px"
                color="#121212"
                className="w-fit"
              />
              <p className="text-sm">Product</p>
            </div>
            <p className="text-sm">Status</p>
            <p className="text-sm">Inventory</p>
            <p className="text-sm">Sales Channel</p>
            <p className="text-sm">Category</p>
            <p className="text-sm">Type</p>
            <p className="text-sm">Vendor</p>
          </div>

          <div className="w-full">
            <div className="px-2 py-2 bg-lightGrey overflow-x-scroll w-full max-w-full grid grid-cols-[250px_100px_150px_150px_100px_100px_100px_100px]">
              <div className="flex gap-2 flex-row justify-start items-center">
                <div className="">
                  <IconComponent
                    name="MdCheckBoxOutlineBlank"
                    size="16px"
                    color="#121212"
                    className="w-fit"
                  />
                </div>
                <Image
                  className="object-cover rounded-md"
                  src={placeholderimage}
                  width={34}
                  height={54}
                  alt="Picture"
                />
                <p className="text-sm">Acne Cleanse</p>
              </div>
              <p className="text-sm text-white py-1 px-2 text-center w-fit rounded-lg bg-emerald-500">
                Active
              </p>
              <p className="text-sm py-1 px-2">120 In Stock</p>
              <p className="text-sm py-1 px-2">2</p>
              <p className="text-sm py-1 px-2">Cleanser</p>
              <p className="text-sm py-1 px-2">Foaming</p>
              <p className="text-sm py-1 px-2">Viva</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default page;
