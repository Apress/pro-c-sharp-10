namespace AutoLot.Mvc.TagHelpers;

public class ItemEditTagHelper : ItemLinkTagHelperBase
{
    public ItemEditTagHelper(IActionContextAccessor contextAccessor, IUrlHelperFactory urlHelperFactory) : base(contextAccessor, urlHelperFactory)
    {
        ActionName = nameof(CarsController.EditAsync).RemoveAsyncSuffix();
    }

    public override void Process(TagHelperContext context, TagHelperOutput output)
    {
        //<a asp-action="Edit" asp-route-id="@item.Id" class="text-warning">Delete <i class="fas fa-trash"></i></a>

        BuildContent(output,"text-warning","Edit","edit");
    }
}